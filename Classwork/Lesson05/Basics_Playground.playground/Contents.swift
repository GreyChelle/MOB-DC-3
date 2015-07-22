////: Playground - noun: a place where people can play
//
//import UIKit
//
//var str = "Hello, playground"
//
//let catCharacters: [Character] = ["C", "a", "t", "!"]
//let catString = String(catCharacters)
//print(catString)
//
//
//let string1 = "hello"
//let string2 = " there"
//
//var welcome = string1  +  string2
//
//for character in "Dog" {
//    println(character)
//}
//
//var instruction = "look over"
//
//instruction += string2
//
//let exclamationMark: Character = "!"
//welcome.append(exclamationMark)
//println(welcome)
//
//let wiseWords = "\"Imagination is more important than knowledge\" - Einstein"
//println(wiseWords)
//
//let dollarSign = "\u{24}"
//println(dollarSign)
//let blackHeart = "\u{2665}"
//println(blackHeart)
//let sparklingHeart = "\u{1F496}"
//println(sparklingHeart)
//
//let latinLetterE = "\u{00E9}"
//print(latinLetterE)
//
//
//var word = "cafe"
//
//word += "\u{301}"
//
//println("the number of charactes in \(word) is \(count(word))")
//
//
//let greeting = "Guten Tag"
//print(greeting.startIndex)
//print(greeting.endIndex)
//
////access character at particular string index(position)
//
//greeting [greeting.startIndex]
//
//greeting [greeting.startIndex.successor()]
//
//let index = advance(greeting.startIndex, 7)
//greeting [index]
//
//for index in indices (greeting) {
//    print("\(greeting[index])")
//}
//println("\n")
//
////insertion
//
//welcome.insert("!", atIndex: welcome.endIndex)
//println(welcome)
//
//welcome.splice(" cowboy", atIndex: welcome.endIndex.predecessor())
//print(welcome)
//
////removal
//
//welcome.removeAtIndex(welcome.endIndex.predecessor())
//
//let range = advance(welcome.endIndex, -19)..<welcome.endIndex
//
//welcome.removeRange(range)
//print(welcome)

//prefixes and suffixes

let romeoAndJuliet = [
    "Act 1 Scene 1: Verona",
    "Act 1 Scene 2: Capulet's mansion",
    "Act 1 Scene 3: A room in Capulet's mansion",
    "Act 1 Scene 4: A street outside Capulet's mansion",
    "Act 1 Scene 5: The Great Hall in Capulet's mansion",
    "Act 2 Scene 1: Outisde Capulet's mansion",
    "Act 2 Scene 2: Capulet's orchard",
    "Act 2 Scene 3: Friar Lawrence's cell",
    "Act 2 Scene 4: Verona Street",
    "Act 2 Scene 5: Capulet's mansion",
    "Act 2 Scene 6: Friar Lawrence's cell"
]

var act1SceneCount = 0
for scene in romeoAndJuliet {
    if scene.hasPrefix("Act 1 ") {
        ++act1SceneCount
    }
}
print("There are \(act1SceneCount) scenes in Act 1.")

var mansionCount = 0
var cellCount = 0

for scene in romeoAndJuliet {
    if scene.hasSuffix("Capulet's mansion") {
        ++mansionCount
    }
}

for scene in romeoAndJuliet {
    if scene.hasSuffix("Friar Lawrence's cell") {
        ++cellCount
    }
}

print("There are \(mansionCount) mansion scenes and \(cellCount) cell scenes in Romeo and Juliet.")


























