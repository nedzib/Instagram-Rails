// Visit The Stimulus Handbook for more details
// https://stimulusjs.org/handbook/introduction
//
// This example controller works with specially annotated HTML like:
//
// <div data-controller="hello">
//   <h1 data-target="hello.output"></h1>
// </div>

// hello_controller.js
import ApplicationController from './application_controller'

export default class extends ApplicationController {
    static targets = ['icon', 'user', 'post']

    heart() {
        console.log("Like")
        console.log("UserTarget"+this.userTarget.value)
        console.log("PostTarget"+this.postTarget.value)
        if ( this.iconTarget.classList.contains('far') ) {
            this.iconTarget.classList.remove('far')
            this.iconTarget.classList.add('fas')
            this.iconTarget.classList.add('text-red-500')
            this.iconTarget.classList.remove('text-black')
            this.stimulate(
                'LikeReflex#create',
                this.userTarget.value,
                this.postTarget.value
            )
        } else {
            this.iconTarget.classList.add('text-black')
            this.iconTarget.classList.remove('text-red-500')
            this.iconTarget.classList.remove('fas')
            this.iconTarget.classList.add('far')
            this.stimulate(
                'LikeReflex#delete',
                this.userTarget.value,
                this.postTarget.value
            )
        }
    }
}