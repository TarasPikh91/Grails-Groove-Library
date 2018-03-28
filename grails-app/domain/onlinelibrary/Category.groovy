package onlinelibrary

class Category {

    int id
    String categoryName

    static hasMany = [book : Book]
    static belongsTo = [Book]

    static constraints = {
    id(unique: true)
        categoryName(nullable: false)
    }
    String toString(){
        return categoryName
    }
}
