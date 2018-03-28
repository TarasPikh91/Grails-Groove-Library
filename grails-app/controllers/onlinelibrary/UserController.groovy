package onlinelibrary

class UserController {

    def scaffold = User

    def index = {
        redirect action: 'login'
    }

    def login = {}
    def authenticate = {
        def user = User.findByLoginAndPassword(params.login, params.password)
        if(user){
            session.user = user
            flash.message = "Hello ${user.name}!"
            redirect(controller:"author", action:"index")
        }else{
            flash.message = "Sorry, ${params.login}. Please try again."
            redirect(action:"login")
        }
    }
    def logout = {
        flash.message = "Goodbye ${session.user.name}"
        session.user = null
        redirect(controller:"user", action:"login")
    }

    def beforeInterceptor = [action:this.&auth,
                             except:["login", "authenticate", "logout"]]
    def auth() {
        if( !(session?.user?.role == "admin") ){
            flash.message = "You must be an administrator to perform that task."
            redirect(action:"login")
            return false
        }
    }
}
