/** base class **/
class Person {
    
    var name = String()
    var age = Int()
    var address = String()
    var salary = Double()
    
    
    /** initialising the variables **/
    init(name: String, age: Int, address: String, salary: Double){
        self.name = name
        self.age = age
        self.address = address
        self.salary = salary
        info()
        about()
    }
    
    /** it is just a function created to print the variables **/
    func info(){
        print("name: \(name)\nage: \(age) years\naddress: \(address)\nsalary: \(salary) U$")
    }
    
    func about(){
        print("Person")
    }
}

/** creates a variable of type Person and has all the properties that the Person class has **/
var newPerson = Person(name: "Thales", age: 25, address: "45 Halifax Avenue", salary: 350.50)


/** inheritting from someClass  **/
class Employee : Person {
    
    /** This will override the Info() in the superclass */
    override func info() {
        print()
        //we use this to initialise the Person from within the subclass and it points to the superclass function
        super.info()
    }
    
    override func about(){
        print("Employee")
    }
}

var newPerson2 = Employee(name: "Aaron", age: 28, address: "332 Cedar St.", salary: 1.655)

class Teacher : Employee {
    
    var subjectsTaught = String()
    
    init(subjectsTaught: String){
        self.subjectsTaught = subjectsTaught
        super.init(name: "James", age: 43, address: "2640 Sherbrooke Ouest", salary: 3955)
    }
    
    override func info() {
        print()
        super.info()
        print("subjects taught: \(subjectsTaught)")
    }
    
    override func about(){
        print("Teacher")
    }
}

var newPerson3 = Teacher(subjectsTaught: "Software Engineering")


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



