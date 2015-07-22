//: Playground - noun: a place where people can play

import UIKit
//three ways to communicate data is delegation, blocks, notifications
//declare every func
protocol Automotive {
   func drive()
    func honk()
    func turnONLights()
}
class Car:Automotive {
    func drive() {
        
    }
    func honk() {}
    
}

class Train: Automotive {
    func drive() {
        
    }
    func honk() {}
    func turnONLights() {
    
    }
    
}

let honda = Car()
let porsche = Car()
let thomas = Train()

var array = [Automotive]()
array.append(honda)
array.append(porsche)
array.append(thomas)
