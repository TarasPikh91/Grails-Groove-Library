package onlinelibrary

class Book {

    int id
    String title
    int countOfPage
    static hasMany = [category: Category]

    static constraints = {
    id(unique: true)
        title(nullable: false)
    }

    String toString(){
        return title
    }
}
