package onlinelibrary

class CategoryController {
    
//    def scaffold = true

    def index = {
        redirect action: 'list'
    }
    def create = {}
    def save = {
        def category = new Category(params)
        category.save flush: true, failOnError: true
        redirect action: 'show', id: category.id
    }
    def edit = {
        def editCategory = Category.get(params.id)
        [category: editCategory]
    }
    def update = {
        def category = Category.get(params.id)
        category.properties = params
        category.save flush: true, failOnError: true
        redirect action: 'show', id: params.id
    }
    def show = {
        def category = Category.get(params.id)
        def categories = Category.list()
        [category: category, categories: categories]
    }
    def list = {
        def categoryList = Category.list()
        [categories : categoryList]
    }
    def delete = {
        def book = Book.findById(params.id)
        def category = Category.get(params.id)
        if (book){
            category.removeFromBook(book)
        }
        category.delete flush: true, failOnError: true
        redirect action: 'index'
    }

    def beforeInterceptor = [action:this.&auth]

    def auth(){
        if (!(session?.user?.role == "admin")){
            flash.message = "You must be an administrator to perform that task."
            redirect(controller: "user", action: "login")
            return false
        }
    }


}
