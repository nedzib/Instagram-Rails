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
import Rails from '@rails/ujs'
import ApplicationController from './application_controller'
import { useClickOutside } from 'stimulus-use'

export default class extends ApplicationController {
    static targets = [ "dropdownItem", "post", "description", "image" ]

    connect() {
        useClickOutside(this)
    }

    dropdown() {
        if ( this.dropdownItemTarget.classList.contains('invisible') ) {
            this.dropdownItemTarget.classList.remove('invisible')
        } else {
            this.dropdownItemTarget.classList.add('invisible')
        }
    }
    noShow() {
        if ( this.dropdownItemTarget.classList.contains('invisible') ) {
        } else {
            this.dropdownItemTarget.classList.add('invisible')
        }
    }

    create(){
        Rails.stopEverything(event)
        this.stimulate(
            'PostReflex#create',
            this.descriptionTarget.value,
            this.imageTarget.value
        )
    }

    delete(){
        Rails.stopEverything(event)
        this.stimulate(
            'PostReflex#delete',
            this.postTarget.value
        )
    }
}