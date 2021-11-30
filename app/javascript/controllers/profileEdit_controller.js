import Rails from '@rails/ujs'
import ApplicationController from './application_controller'

export default class extends ApplicationController {
    static targets = ['username', 'name', 'email', 'cellphone', 'id']


    connect () {
        super.connect()
    }

    update (event) {
        var change = 1
        // console.log(this.idTarget.value)
        // console.log(this.usernameTarget.value)
        // console.log(this.nameTarget.value)
        // console.log(this.emailTarget.value)
        // console.log(this.cellphoneTarget.value)
        if(this.emailTarget.value != ''){
            if (!this.emailValidate(this.emailTarget.value)){
                change = 0
                Rails.stopEverything(event)
                this.stimulate(
                    'profileReflex#error',
                    "Email no válido"
                )
            }
        }
        if(this.cellphoneTarget.value != '') {
            if (this.cellphoneTarget.value.length > 10 || this.cellphoneTarget.value.length < 7) {
                change = 0
                Rails.stopEverything(event)
                this.stimulate(
                    'profileReflex#error',
                    "Número de Telefono debe tener entre 7 y 10 caractéres"
                )
            }
        }
        if(change == 1){
            Rails.stopEverything(event)
            this.stimulate(
                'profileReflex#update',
                this.idTarget.value,
                this.usernameTarget.value,
                this.nameTarget.value,
                this.emailTarget.value,
                this.cellphoneTarget.value
            )
        }
    }

    keydown(event){
        if (event.key.match(/[0-9]/) || event.key == "Backspace" || event.key == "Delete" || event.key == "ArrowLeft" || event.key == "ArrowRight"){
        } else {
            event.preventDefault()
        }
    }

    emailValidate(email){
        var emailRegex = /^(([^<>()\[\]\.,;:\s@\"]+(\.[^<>()\[\]\.,;:\s@\"]+)*)|(\".+\"))@(([^<>()[\]\.,;:\s@\"]+\.)+[^<>()[\]\.,;:\s@\"]{2,})$/gm
        return !!email.match(emailRegex);
    }

    removeNotices(){
        this.stimulate(
            'profileReflex#remove_notices',
        )
    }

}