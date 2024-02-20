// Define a Person class
class Person {
    var name: String
    var age: Int
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
    
    func introduce() {
        print("Hello, my name is \(name) and I am \(age) years old.")
    }
}

// Create an object of the Person class
let person1 = Person(name: "Karley", age: 20)
person1.introduce()

// Define a Student class that inherits from Person
class Student: Person {
    var studentID: String
    
    init(name: String, age: Int, studentID: String) {
        self.studentID = studentID
        super.init(name: name, age: age)
    }
    
    // Function specific to Student class
    func study() {
        print("\(name) is studying.")
    }
}

// Create an object of the Student class
let student1 = Student(name: "Riley", age: 21, studentID: "S123")
student1.introduce() // Inherited function from Person
student1.study()    // Function specific to Student

// Modify variables
person1.name = "Noah"
person1.introduce() // Updated name

student1.age = 22
student1.introduce() // Updated age

// Explanation:
// The first print statement is from the introduce() function called on the person1 object, which prints the information about the person with name "Karley" and age 20.

// The second print statement is from the introduce() function called on the student1 object, which prints the information about the student with name "Riley", age 21, and student ID "S123".

// The third print statement is from the study() function called on the student1 object, which indicates that Riley is studying.

// After modifying the name attribute of the person1 object to "Noah" and the age attribute of the student1 object to 22, the fourth and fifth print statements confirm the changes made to the objects.
