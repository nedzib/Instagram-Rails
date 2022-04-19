// Visit The Stimulus Handbook for more details
// https://stimulusjs.org/handbook/introduction
//
// This example controller works with specially annotated HTML like:
//
// <div data-controller="hello">
//   <h1 data-target="hello.output"></h1>
// </div>

// hello_controller.js
import { Controller } from "stimulus"
import {useClickOutside} from "stimulus-use";

export default class extends Controller {
    static targets = [ "dropdown" ]

    connect() {
        useClickOutside(this)
    }

    open() {
        if ( this.dropdownTarget.classList.contains('invisible') ) {
            this.dropdownTarget.classList.remove('invisible')
        } else {
            this.dropdownTarget.classList.add('invisible')
        }
    }
    close(){
        if ( this.dropdownTarget.classList.contains('invisible') ) {
        } else {
            this.dropdownTarget.classList.add('invisible')
        }
    }
}