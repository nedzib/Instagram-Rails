import { Controller } from "stimulus"

export default class extends Controller {
    static targets = [ "new" ]

    greet() {
        console.log(this.newTarget.value);
        // this.outputTarget.textContent = `${this.newTarget.value}`
        console.log(document)
        // this.outputTarget.textContent =
        //     `Hello, ${this.nameTarget.value}!`
    }
}