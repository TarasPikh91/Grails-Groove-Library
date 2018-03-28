package onlinelibrary

class BookController {

//    def scaffold = true

    def index = {
        redirect action: 'list'
    }

    def create = {}

    def save = {
        def category = Category.findById(params.id)
        def book = new Book(params)
        if (category){
            category.addToBook(book)
        }
        book.save flush: true, failOnError: true
        redirect action: 'show', id: book.id
    }
    def edit = {
        def book = Book.get(params.id)
        [book: book]
    }
    def update = {
        def book = Book.get(params.id)
        book.properties = params
        book.save flush: true, failOnError: true
        redirect action: 'show', id: params.id
    }
    def show = {
        def book = Book.get(params.id)
        def books = Book.list()
        [book: book, books: books]
    }
    def list = {
        def bookList = Book.list()
        [books : bookList]
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
