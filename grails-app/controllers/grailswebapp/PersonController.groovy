package grailswebapp

class PersonController {

    def index() {
        render "Hello this is default action"
//        def person = new Person(name: "kiran",address: "koteshwor")
//        println person.name
//        println person.address
//        person.save()

//        def people = Person.list()

//        [person:person,people:people]
    }

    def save(){
        def person = new Person(params)
        person.save()
        render(view: "success")
    }

    def list(){
        def person = Person.list()
        [person: person]
    }
}
