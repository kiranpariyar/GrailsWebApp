package grailswebapp

class BrandController {

    def index() {
        render(view:"create.gsp")
    }

    def create(){
        def brand = new Brand(params)
        println brand.brandname
        brand.save()
        render(view: "success.gsp")
    }
}
