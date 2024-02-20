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

#### 3. How does inheritance work (if it does)? Does your language support multiple inheritance?
######
#### 4. If there is inheritance, how does your language deal with overloading method names and resolving those calls?
######
#### 5. Is there anything else that’s important to know about objects and inheritance in your language? a. I know this question is vague, but objects are where languages can vary a lot, so it’s hard to ask questions that will apply to everyone.
