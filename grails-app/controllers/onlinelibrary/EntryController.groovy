package onlinelibrary

class EntryController {

    def scaffold = Entry
    def beforeInterceptor = [action:this.&auth, except:["index", "list", "show"]]
    def auth() {
        if(!session.user) {
            redirect(controller:"user", action:"login")
            return false
        }
    }

    def edit = {
        def entryInstance = Entry.get( params.id )
        //limit editing to the original author
        if( !(session.user.login == entryInstance.author.login) ){
            flash.message = "Sorry, you can only edit your own entries."
            redirect(action:list)
        }
        if(!entryInstance) {
            flash.message = "Entry not found with id ${params.id}"
            redirect(action:list)
        }
        else {
            return [ entryInstance : entryInstance ]
        }
    }

    def list = {

    }

}
