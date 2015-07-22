////: Playground - noun: a place where people can play
//
//import UIKit
//
//var str = "Hello, playground"
////polymorphism
//
//func car (wheels: Int, doors: Int) {
//    println("A simpple car with \(wheels) wheels and \(doors) doors")
//}
//
////func car(wheels: Int, spoiler: Bool) -> String {
////    
////}
//
//car(2,2)
//
////classes
//
//class Car {
//    var wheels: Int
//    var doors: Int
//    var name: String
//
////    Initializer method (aka initializer function
//    init(wheels: Int, doors: Int, name: String) {
//        self.wheels = wheels
//        self.doors = doors
//        self.name = name
//    }
//    
//    func drive() -> Bool{
//        return true
//    }
//}
////self is always going to be class
//////myCar is an object
////var myCar = Car()
////
//////gettting name
////println(myCar.name)
////
//////setting value
////
////myCar.name = "BMW"
////println(myCar.name)
//
//
//let myCar = Car(wheels: 4, doors: 4, name: "BMW")
//myCar.drive()
//
//class lamborgini: Car {
//    var spoiler: Bool?
//}

//struct

struct Rectangle {
    var x: Float
    var y: Float
    var width: Float
    var height: Float
    
    func area() -> Float {
        return width*height
    }
    
}


let square = Rectangle(x:0.0, y:0.0, width: 100, height: 100)

//classes vs structs
//classes are pass by reference
//structs are pass by copy

class Car {
    var wheels: Int
    
    init(wheels: Int) {
        self.wheels = wheels
    }
}

struct Line {
    var length: Int
    
}

var myCar = Car(wheels: 4)
var thomasCar = myCar
thomasCar.wheels = 6
myCar.wheels
thomasCar.wheels

//classes will change

var myLine = Line (length: 10)
myLine.length = 15
var secondLine = myLine
secondLine.length = 20

myLine.length
secondLine.length

//structs will make a copy


