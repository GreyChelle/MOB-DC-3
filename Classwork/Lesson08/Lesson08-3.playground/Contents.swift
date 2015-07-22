//: Playground - noun: a place where people can play

import UIKit

//declare dictionary long
//let constDict =Dictionary<String, String>(dictionaryLiteral: ("Devin", "White"), ("luke", "black"))

var constDict = Dictionary<String, String>(dictionaryLiteral: ("Devin", "White"), ("luke", "black"))

//declar dictionary short way

var dict = ["luke":"navy blue", "devin": "white"]

dict["Kris"] = "lime green"
dict["luke"] = "black"
dict

dict.count
dict.keys.array
dict.values.array

var people = ["Arthur": 29, "Thomas": 23]


var fibDict: [Int: Int] = [0:1], 1:1, 2:1, 3:2]

var names: [String: String] = ["Luke": "K", "Handy": "D", "Devin": "C"]
names["Luke"] = "Black"
names ["Kevin"] = "Park"
names.removeValueForKey("Handy")

names["Chase"] = names["Devin"]
names.removeValueForKey("Devin")
println(names)

////init(names: [String: String]) {
//    self.names = names
//} initialize instead of ! to make command work

//because dictionaries are unordered, wouldn't have a value for an element. have to make an array within a dictionary like names.keys.array[0]