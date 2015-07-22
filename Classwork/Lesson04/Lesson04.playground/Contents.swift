//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

var newClientName: String?
// newClientName is initialized as nil


newClientName = "Apple"
let client = newClientName!
//unwrapped variable

let a = 1
let b = 2
var c = a + b
print(c) //prints 3

var d = c + a
print(d) //prints 4


let names = ["Anna", "Alex", "Brian", "Jack"]
for name in names {
    println("Hello, \(name)!")
}
////Hello, Anna!
////Hello, Alex!
////Hello, Brian!
//Hello, Jack!


//initial; continue until;

for var index = 0; index < names.count; ++index
{println("name at index \(index) is \(names[index])")
}

//while statement
//var counter = 1
//while counter <= 5 {
//    println("we've counted to \(counter)")
//}

var composerType: String?
var composer: String?
if composer == "Bach" {
    composerType = "Baroque"
}
else if composer == "Beethoven" {
    composerType = "Classical"
}
else if composer == "Schumann" {
    composerType = "Romantic"
}
else {
    composerType = "Unknown"
}
print("\(composer) is \(composerType)")

//switching
//switch value to consider {
//    case value 1:
//    repsond to value 1
//    case value 2,
//    value 3:
//    respond to value 2 or 3
//    default:
//    otherwise, do something else
//}

let breakfastCost = 10

switch breakfastCost {
case 0:
    print("Free?! I'll take it!")
case 1...4:
    print("Sounds good. I'll buy it!")
case 5...7:
    print("Grumble. I guess")
case 8...10:
    print("I'm going elsewhere")
default:
    print("Highway robbery!")
}

//swift types

let likeCats: Bool = true
let numberOfCatsOwned: Int = 25
let dollarsCatsCostMe: Double = Double(numberOfCatsOwned) * 500.0
let name: String = "Batman"

//tuples are a group of two or more variables coupled together

let balloon = (12.0, "Red")
let (diameter, color) = balloon
println("The ballon diameter is \(diameter)")
println("The balloon color is \(color)")
//Output
//The balloon diameter is 12.0
//The balloon color is Red

//arrays store multiple values of same type in an ordered list
var lbNeighborhoods = ["Downtown", "Bixby Knolls", "North Long Beach", "Wilmore", "California Heights"]
for hood in lbNeighborhoods {
    if hood == "North Long Beach" {
        println("\(hood) is home!")
    }
    else {
        println(hood)
    }
}
//Creat a new, blank array which will contain strings

var placesLived = Array<String>()
placesLived.append("Downtown")
placesLived.append("North Long Beach")

//functions

func exampleFunction (thisIsFun:Bool) -> String {
    var returnValue = "No, this isn't fun."
    if thisIsFun {
        returnValue = "Yes, this is fun!"
    }
    return returnValue
}

let enjoyment = exampleFunction(<#thisIsFun: Bool#>)
print("Is Swift fun? \(enjoyment)")

// Storing one piece of data
let myName = "Jeff"

////
// Storing an array of data
let dangerousSnakes: [String] = ["Rattlesnake", "Cobra", "Python"]

////
// Storing a rectangle
struct Rect {
    var length:Int
    var width:Int
    var color:String
    var area:Int {
        get {
            return length * width
        }
    }
}

let rectangle = Rect(length: 10, width: 10)
let area = rectangle.area // 100

////
// Storing a complex object
class ComplexObject {
    var objectName:String
    var objectType:String
    var objectAge:Int
    var spouse:ComplexObject?
    
    init(name:String, type:String, age:Int) {
        self.objectName = name
        self.objectType = type
        self.objectAge = age
    }
    
    func becomeMarried(partner:ComplexObject) -> () {
        self.spouse = partner
    }
}

let me = ComplexObject(name: "Jeff", type: "Human", age: 34)
me.objectType

let wife = ComplexObject(name: "Katie", type: "Human", age: 32)
me.becomeMarried(wife)
wife.objectType







//func cat(sound: String; pause:Int)
//
//func knockknock() {
//    println("Whos' there")
//}
//
//knockknock
//
//func knockMultipleTimes (number: int) {
//    for 1 in 1...number {
//        knockknock()
//    }
//}
