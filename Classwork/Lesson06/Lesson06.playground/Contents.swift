//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//encapsulation

func unlockApp (serialKey: String) -> Bool {
    let containsProperLength = properLength(serialKey)
    let containsSpecificValues = specificValues(serialKey)
    let result = containsProperLength && containsSpecificValues
    
    return result
}

func properLength (serialKey: String) -> Bool {
    let length = count(serialKey)
    let result = (length == 10) ? true: false
    return result
}

func specificValues(serialKey: String) -> Bool {
    let result = (serialKey as NSString).containsString("01")
    return result
}

unlockApp("Password0100099")

//anstraction

class Animal {
    var numberOfLimbs: Int
    var mammal: Bool
    var lungs: Bool
    
    init(limbs: Int, mammal: Bool, lungs: Bool, tail: Bool,)
}
