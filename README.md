## PLP5 (Swift)

#### 1. Does your language support objects or something similar (e.g., structs)? a. Are there naming conventions for objects, instance variables, or functions that people writing in your language should be aware of?
* Types (Classes, Structs, Enums): Follow UpperCamelCase convention. Names of types and protocols should be capitalized, with each word capitalized within the name.
*        //Example
        struct MyStruct {
            // struct definition 
        }

        class MyClass {
            // class definition
        }

        enum MyEnum {
            // enum definition
        }
* Properties and Variables: Follow lowerCamelCase convention. Names of properties and variables should start with lowercase letter, with subsequent words capitalized.
*         //Example
          var myVariable: Int
          let myConstant: String
* Functions and Methods: Follow lowerCamelCase convention. Function and method names should also start with a lowercase letter, with subsequent words capitalized.
*         //Example
          func myFunction() {
            // function definition
          }

          func calculateValue() {
            // method definition
          }
* Constants and Enum Cases: Follow UpperCamelCase convention. Names of constants and enum cases should be capitalized, with each word capitalized within the name.
*         //Example
          let MaxValue = 100
          enum Direction {
              case Up
              case Down
          }
* Acronyms: Acronyms and initialisms should be treated as single words in names.
*         //Example
          var userID: Int
#### 2. Does your language have standard methods for functions that serve a similar purpose across all objects? For example, toString() in Java and __str__ in Python allow information about the objects to be printed. Are there similar functions in your language?
###### In Swift, the equivalent functionality to "toString()" in Java or "__str__()" in Python is achieved through the CustomStringConvertible protocol, which allows objects to customize their string representation.
###### In Swift, the CustomStringConvertible protocol allows types to provide their own representation when converting an instance to a string. The String(describing:) initializer is the recommended method to convert an instance of any type to a string. If the instance conforms to CustomStringConvertible, both the String(describing:) initializer and the print(_:) function will use the instance's "description" property. However, directly accessing a type's "description" property or using CustomStringConvertible as a generic constraint is generally discouraged.
* To conform to the CustomStringConvertible protocol, you need to define a description property in your custom types. For example, consider a custom Point struct:
*         //Example
          struct Point {
            let x: Int, y: Int
          }
######         (By default, struct uses the default representation:)
*         //Example
          let p = Point(x: 21, y: 30)
          print(p)
          // Prints "Point(x: 21, y: 30)"
* However, after implementing the description property and declaring conformance to CustomStringConvertible, the Point type provides its own custom representation:
*         //Example
          extension Point: CustomStringConvertible {
              var description: String {
                  return "(\(x), \(y))"
              }
          }

          print(p)
          // Prints "(21, 30)"
###### In the above example, the description property of the Point struct is implemented to return a string representation in the format "(x, y)", where x and y are the coordinates of the point. When you print an instance of Point, Swift automatically uses the custom description property to provide the desired string representation.
#### 3. How does inheritance work (if it does)? Does your language support multiple inheritance?
###### In Swift, a class can inherit methods, properties, and other characteristics from another class. When one class inherits from another, the inheriting class is known as a subclass, and the class it inherits from is known as its superclass. 
* Defining a Base Class: Any class that doesn’t inherit from another class is known as a base class. Base classes in Swift can define properties, methods, and other characteristics. For example, the "Vehicle" class is defined with properties like "currentSpeed" and a method "makeNoise()".
*         //Example
          class Vehicle {
            var currentSpeed = 0.0
            var description: String {
                return "traveling at \(currentSpeed) miles per hour"
            }
            func makeNoise() {
                // do nothing - an arbitrary vehicle doesn't necessarily make a noise
            }
          }
* Subclassing: Subclassing is the act of basing a new class on an existing class. In Swift, you indicate that a subclass has a superclass by writing the subclass name before the superclass name, separated by a colon.
*         //Example
          class SomeSubclass: SomeSuperclass {
            // subclass definition goes here
          }
* Overriding: A subclass can provide its own custom implementation of methods, properties, or subscripts that it inherits from a superclass. In Swift, you use the "override" keyword to indicate that a characteristic is being overridden. For example, the "makeNoise()" method in the Train class overrides the method inherited from Vehicle.
*         //Example
          class Train: Vehicle {
            override func makeNoise() {
                print("Choo Choo")
            }
          }
* Accessing Superclass Methods, Properties, and Subscripts: When providing an override for a subclass, it's sometimes useful to access the existing implementation from the superclass. In Swift, you use the "super" prefix to access the superclass's implementation.
* Preventing Overrides: You can prevent a method, property, or subscript from being overridden in a subclass by marking it as "final". This prevents subclasses from providing their own implementations.
###### In Swift, single inheritance is supported, meaning a class can inherit from only one superclass.
#### 4. If there is inheritance, how does your language deal with overloading method names and resolving those calls?
###### In Swift, method overloading is common and allows developers to define multiple methods with the same name but differing in parameter types, number of parameters, or argument labels. When a method call is made, Swift's compiler decides which method to execute based on the provided arguments, ensuring that the appropriate overloaded method is executed.
#### 5. Is there anything else that’s important to know about objects and inheritance in your language? a. I know this question is vague, but objects are where languages can vary a lot, so it’s hard to ask questions that will apply to everyone.
* Access Control: Swift provides access control modifiers such as "private", "internal", "fileprivate", and "public" to restrict access to properties, methods, and classes.
*         //Example
          open class SomeOpenClass {}
          public class SomePublicClass {}
          internal class SomeInternalClass {}
          fileprivate class SomeFilePrivateClass {}
          private class SomePrivateClass {}
* Type Casting and Checking: Swift provides type casting operators (as, as?, as!) to check and convert the type of an instance at runtime. This is very useful when working with inheritance hierarchies.
* Class Initialization and Deinitialization: In addition to custom initializers, Swift classes can define deinitializers using the "deinit" keyword. Deinitializers are called automatically when an instance of a class is deallocated, allowing for cleanup operations.
*         //Format
          deinit {
              // perform the deinitialization
          }

#### Sources:
* https://docs.swift.org/swift-book/documentation/the-swift-programming-language/enumerations
* https://docs.swift.org/swift-book/documentation/the-swift-programming-language/classesandstructures/
* https://docs.swift.org/swift-book/documentation/the-swift-programming-language/inheritance/
* https://developer.apple.com/documentation/swift/customstringconvertible
* https://serialcoder.dev/text-tutorials/swift-tutorials/overloading-functions-in-swift/
* https://docs.swift.org/swift-book/documentation/the-swift-programming-language/accesscontrol/
* https://docs.swift.org/swift-book/documentation/the-swift-programming-language/typecasting/
* https://docs.swift.org/swift-book/documentation/the-swift-programming-language/deinitialization/
