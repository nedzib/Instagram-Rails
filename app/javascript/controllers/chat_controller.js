
import ApplicationController from './application_controller'

export default class extends ApplicationController {
    static targets = ['list', 'input', 'user', 'post']


    connect () {
        super.connect()
    }

    post (event) {
        this.stimulate(
            'CommentReflex#create',
            this.inputTarget.value,
            this.userTarget.value,
            this.postTarget.value

        )
    }


}