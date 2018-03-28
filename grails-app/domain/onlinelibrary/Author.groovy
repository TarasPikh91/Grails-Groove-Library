package onlinelibrary

class Author {

    int id
    String fullName
    
    static hasMany = [book: Book]
    
    static constraints = {
    id(unique: true)
        fullName(nullable: false)
    }
}
