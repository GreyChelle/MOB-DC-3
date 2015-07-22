//: Playground - noun: a place where people can play

import UIKit
//: Playground - noun: a place where people can play

import UIKit

//long way of writing array

let longArray = Array<String>(arrayLiteral: "Kris", "Luke", "Handy")


//short syntax for array

var shirts = ["black", "flannel", "checkered"]

shirts [0] = "sweater"
shirts

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


//remove first item


//remove last item
let lastValue = shortArray.removeLast()
let firstValue = shortArray.removeFirst()
firstValue
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
shortArray[0] = "Aaron"
print(shortArray[2])
shortArray[1]

