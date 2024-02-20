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
