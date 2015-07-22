//: Playground - noun: a place where people can play

import UIKit

protocol Delegate {
    func startWar()
    func makePeace()
}

class Country{
    var delegate: Spokesperson?
    
    func causeProblems() {
        if let delegate = delegate {
            delegate.startWar()        }
    }
    
    func fixProblems() {
        if let delegate = delegate {
            delegate.makePeace()
        }
    }
}

class Spokesperson: Delegate {
    func startWar() {
    
    }
    func makePeace() {
        
    }

}

let handy = Spokesperson()
let france = Country()
france.delegate = handy
handy.startWar
