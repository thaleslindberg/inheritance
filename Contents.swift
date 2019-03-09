/** base class **/
class Person {
    
    var name = String()
    var age = Int()
    var address = String()
    
    
    /** initialising the variables **/
    init(name: String, age: Int, address: String){
        self.name = name
        self.age = age
        self.address = address
        info()
        about()
    }
    
    /** it is just a function created to print the variables **/
    func info(){
        print("name: \(name)\nage: \(age) years\naddress: \(address)")
    }
    
    func about(){
        print("Person")
    }
}

/** creates a variable of type Person and has all the properties that the Person class has **/
var newPerson = Person(name: "Thales", age: 25, address: "45 Halifax Avenue")


/** inheritting from someClass  **/
class Employee : Person {
    
    var salary = Double()
    
    init(salary: Double){
        self.salary = salary
        super.init(name: "Aaron", age: 28, address: "332 Cedar St.")
    }
    
    /** This will override the Info() in the superclass */
    override func info() {
        print()
        //we use this to initialise the Person from within the subclass and it points to the superclass function
        super.info()
        print("salary: \(salary) U$")
    }
    
    override func about(){
        print("Employee")
    }
}

var newPerson2 = Employee(salary: 1.655)

class Teacher : Person {
    
    var subjectsTaught = String()
    var salary = Double()
    
    
    init(subjectsTaught: String, salary: Double){
        self.subjectsTaught = subjectsTaught
        self.salary = salary
        super.init(name: "James", age: 45, address: "2640 Sherbrooke Ouest")
    }
    
    override func info() {
        print()
        super.info()
        print("subjects taught: \(subjectsTaught)")
        print("salary: \(salary) U$")
    }
    
    override func about(){
        print("Teacher")
    }
}

var newPerson3 = Teacher(subjectsTaught: "Software Engineering", salary: 3955)


/** The following output is:
 
 name: Thales
 age: 25 years
 address: 45 Halifax Avenue
 Person
 
 name: Aaron
 age: 28 years
 address: 332 Cedar St.
 salary: 1.655 U$
 Employee
 
 name: James
 age: 45 years
 address: 2640 Sherbrooke Ouest
 subjects taught: Software Engineering
 salary: 3955.0 U$
 Teacher
 **/



