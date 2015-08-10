package grailswebapp

class PersonController {

    def index() {

//        def person = new Person(name: "kiran",address: "koteshwor")
//        println person.name
//        println person.address
//        person.save(flash:true)

//        def people = Person.list()
//
//        for(p in people){
//            println p
//        }

        def p = Person.get(1)
        p.delete()
        p = Person.get(2)
        p.delete()

        [person:p]
    }
}
