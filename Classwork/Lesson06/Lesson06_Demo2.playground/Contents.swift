//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
//class

/*whatever you do to the var, will change and reflect and be a reference for all that equal var*/

class RefTypeExample {
    var name: String
    init (name:String) {
        self.name = name
    }
}

let exampleA = RefTypeExample(name: "Arthur")
let exampleB = exampleA

exampleB.name = "Thomas"
exampleA


//append

//Struct

struct ValueTypeExample {
    var name: String
}

var valueExampleA = ValueTypeExample(name: "Arthur")
var valueExampleB = valueExampleA
valueExampleB.name = "Thomas"
valueExampleA
//strings are the same as struct
let myName = "Arthur"
var yourName = myName
yourName = "Handy"

myName