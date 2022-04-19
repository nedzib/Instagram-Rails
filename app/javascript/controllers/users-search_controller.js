import ApplicationController from './application_controller'

export default class extends ApplicationController {
    static targets = ['query', 'activity', 'count', 'list']

    perform (event) {
        if ( this.countTarget.classList.contains('invisible') ) {
            this.countTarget.classList.remove('invisible')
        }
        event.preventDefault()
        this.stimulate('UsersSearchReflex#perform', this.queryTarget.value)
    }

    close(){
        console.log("CERRAR")
        if ( this.countTarget.classList.contains('invisible') ) {
        } else {
            this.countTarget.classList.add('invisible')
        }
    }
}