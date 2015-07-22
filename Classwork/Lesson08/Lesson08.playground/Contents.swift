//: Playground - noun: a place where people can play

import UIKit

//long way of writing array

let longArray = Array<String>(arrayLiteral: "Kris", "Luke", "Handy")
longArray.append("Thomas")



//short syntax for array

var shortArray = ["Kris", "Luke", "Handy"]

//adding something to an array
shortArray.append("Devin")

//count number of elements
shortArray.count

for i in 0..<shortArray.count {
    println(shortArray[i])
}

for i in shortArray {
    println(i)
}

//remove last item
let lastValue = shortArray.removeLast()
shortArray
lastValue

shortArray.append("Kate")
shortArray.append("Thomas")
shortArray.append("Rashod")

//remove random item

shortArray.removeAtIndex(2)

//empty array

shortArray.isEmpty

//create empty array

var emptyArray = [String]()
emptyArray.isEmpty


//subscript syntax

//literal syntax reminder

let myName = "Arthur"
let myAge = 29
println("My name is \(myName) and my age is \(myAge).")

//collection literals 
//array literal [,]

//subscripting
shortArray
