package onlinelibrary

class User {

    String login
    String password
    String name
    String role = "author"

    static hasMany = [entries:Entry]

    static constraints = {
        login(unique: true)
        password(password: true)
        name()
        role(inList: ["author","admin"])
    }

    String toString(){
        name
    }
}
