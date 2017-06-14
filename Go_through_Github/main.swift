

import Foundation

// 1.------------Commenting-------------------

/* print("How Are you") */


// 2. -----------Data Types-------------------

// Integer Types
let aChar = CChar()
print("C char size: with min: \(Int8.min) and max: \(Int8.max)")

let anUnsignedChar = CUnsignedChar()
print("C unsigned char size: with min: \(UInt8.min) and max: \(UInt8.max)")


let aTinyInt: Int8 = 127
let aTinyUnsignedInt: UInt8 = 255

let aMediumInt: Int16 = 32767
let aMediumUnsignedInt: UInt16  = 65535

let aNormalInt: Int32  = 2147483647
let aNormalUnsignedInt: UInt32 = 4294967295

let aBigInt: Int64 = 9223372036854775807
let aBigUnsignedInt: UInt64 = 18446744073709551615

// The largest supported integer type
let theBiggestInt: IntMax = 9223372036854775807
let theBiggestUnsignedInt: UIntMax = 18446744073709551615

// Floatint Point 

/* let aFloat = Float()
print("Float size: \(MemoryLayout.size(ofValue: aFloat))")

let aDouble = Double()
print("Double size: \(MemoryLayout.size(ofValue: aDouble))") */

// Boolean
let isBool: Bool = true // Or false

// Enum 
enum UITableViewCellStyle: Int {
    case valueOne, valueTwo, subtitle
}
var enum1 = UITableViewCellStyle.valueOne
print(enum1)


// Type Casting
// 1. Basic Type Cast
let typecasting : Float = 40.501
let IntType : Int = Int(typecasting)
print(IntType)
let aString: String = String(IntType)
print(aString)

// 3. -------------------------Operator Overloading--------------------


/* struct Vector2D: CustomStringConvertible {
    var x = 0.0, y = 0.0
    
    var description: String {
        return "Vector2D(x: \(x), y: \(y))"
    }
}

infix operator +-: AdditionPrecedence
extension Vector2D {
    static func +- (left: Vector2D, right: Vector2D) -> Vector2D {
    return Vector2D(x: left.x + right.x, y: left.y - right.y)
    }
}
let firstVector = Vector2D(x: 1.0, y: 2.0)
let secondVector = Vector2D(x: 3.0, y: 4.0)
let plusMinusVector = firstVector +- secondVector */

// 4. ------------------------------Declaring Classes----------------------

class MyClass
{
    var x : Int , y: Int
    init(x: Int , y: Int)
    {
        self.x = x
        self.y = y
    }
}
var objMyClass = MyClass(x: 10 , y: 20)
print("Value = \(objMyClass)")


// 5. -------------------------------Litera----------------------------------
/* Array Access Syntax */
let example : [Any] = [ "hi", "there", 23, true ]
print("item at index 0: \(example[0])")
print("item at index 1: \(example[3])")


/* Dictionary Access Syntax */
let example1 = [ "hi" : "there", "iOS" : "people" ]
if let value = example1["iOS"] {
    print("hi \(value)")
}

// 6. -------------------------------Functions-------------------------------
/* Declaration Syntax */
func dowork()
{
}

/*  class func someClassFunction() {
    // Code
}
static func someStaticFunction() {
    // Code
} */
func ShoppingList(s1 shirt : String)-> String
{
    return "ShoppingList Name = \(shirt)"
}

print(ShoppingList(s1 : "Nice Shirt"))


// 7. --------------------------------Constants and Variables-----------------------

class MyClass1
{
    let text: String = "Hello" // Constant
    var isComplete: Bool = true // Variable
}

var myInt = 1 // inferred type
var myExplicitInt: Int = 1 // explicit type
var x = 1, y = 2, z = 3 // declare multiple variables

let (a,b) = (1,2) // declare multiple constants


// Getters(read Value) and Setters(write Value)
private var _x: Int = 5

var x1: Int
{
    get {
        print("Accessing x...")
        return _x
}
    set {
        print("Setting x...")
        _x = newValue
}
}
print(x1)


var numberOfEdits = 0
var value: String = "" {
willSet {
    print("About to set value...")
}
didSet {
    numberOfEdits += 1
}
}
print(value)


// 8.-----------------------------Naming Conventions----------------
/*
// Correct
func move(from start: Point, to end: Point) {}

// Incorrect (likely too expressive, but arguable)
func moveBetweenPoints(from start: Point, to end: Point) {}

// Incorrect (not expressive enough and lacking argument clarity)
func move(x: Point, y: Point) {} */



// 9. -----------------------------Closures--------------------------
/*
let people = ["Rob", "Jimbob", "Cletus"]
people.map({
    (person: String) -> String in
    "Oh hai, \(person)..."
})


let names = ["Francesca", "Joe", "Bill", "Sally", ]
var reversed = names.sorted{ (s1: String, s2: String) -> Bool in
    return s1 > s2
}
print(reversed)
// Or on a single line:
reversed = names.sorted{ (s1: String, s2: String) -> Bool in return s1 > s2 }
print(reversed)

*/
// Capturing Values
func makeIncrementor(forIncrement amount: Int) -> () -> Int {
    var runningTotal = 1
    func incrementor() -> Int {
        runningTotal += amount
        return runningTotal
    }
    return incrementor
}
// 10. ----------------------------Control Statements-------------------------
// If-Else If-Else

func demo(a: Int , b: Int, c: Int)
{
    if a > b
    {
        print("A is --")
    }
    else if b > c
    {
        print("b is --")
    }
    else
    {
        print("c is --")
    }
}
demo(10, b: 20 , c: 30)


// Ternary Operators
func stringForTrueOrFalse(trueOrFalse: Bool) -> String {
    return trueOrFalse ? "True is --" : "False is--"
}
print(stringForTrueOrFalse(false))


// For Loop

for index in 1...5 {
    print("\(index) times 5 is \(index * 5)")
}

//Enumerating arrays & dictionaries

// Enumerating simple array
let names = ["Anna", "Alex", "Brian", "Jack"]
for name in names {
    print("Hello, \(name)!")
}

// Enumerating simple dictionary
let numberOfLegs = ["spider": 8, "ant": 6, "cat": 4]
for (animalName, legCount) in numberOfLegs {
    print("\(animalName)s have \(legCount) legs")
}

// While Loop
var score = 0
while score < 5
{
    score += 1
    print(score)
}


// Repeat While Loop
var score1 = 0
repeat {
   
    score1 += 1
     print(score1)
    
} while score1 < 5


// Switch Case
let someCharacter: Character = "z"
switch someCharacter {
case "a":
    print("The first letter of the alphabet")
case "z":
    print("The last letter of the alphabet")
default:
    print("Some other character")
}