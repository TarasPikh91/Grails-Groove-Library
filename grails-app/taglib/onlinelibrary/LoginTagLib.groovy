package onlinelibrary

class LoginTagLib {

    def loginControl = {
        if (session.user){
            out << "Hello ${session.user.name}"
            out << """${link(action:'logout', controller:'user') {"Logout "}}"""
        }else {
            out << """${link(action: "login", controller:"user") {"Login "}}"""
        }
    }
//    static defaultEncodeAs = [taglib:'html']
    //static encodeAsForTags = [tagName: [taglib:'html'], otherTagName: [taglib:'none']]
}
