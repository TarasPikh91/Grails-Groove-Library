package onlinelibrary

class AuthorController {

//    def scaffold = true

    def index = {
        redirect action: 'list'
    }
    def create = {}

    def save = {
        def book = Book.findByTitle(params.title)
        def author = new Author(params)
        if (book){
            author.addToBook(book)
        }
        author.save flush: true, failOnError: true
        redirect action: 'show', id: author.id
    }
    def edit = {
        def editAuthor = Author.get(params.id)
        def books = Book.list()
        [author : editAuthor, books: books]
    }
    def update = {
        def author = Author.get(params.id)
        author.properties = params
        author.save flush: true, failOnError: true
        redirect action: 'show', id: params.id
    }
    def show = {
        def author = Author.get(params.id)
        def authors = Author.list()
        [author: author, authors: authors]
    }
    def list = {
        def authors = Author.list()
        [authors: authors]
    }
    def delete = {
        def book = Book.findById(params.id)
        def author = Author.get(params.id)
        if (book){
            author.removeFromBook(book)
        }
        author.delete flush: true, failOnError: true
        redirect action: 'index'
    }

    def beforeInterceptor = [action:this.&auth]

    def auth() {
        if( !(session?.user?.role == "admin") ){
            flash.message = "You must be an administrator to perform that task."
            redirect(controller: "user", action:"login")
            return false
        }
    }
}
