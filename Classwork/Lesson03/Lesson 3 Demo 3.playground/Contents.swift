/* Control Flow/While/If Statements


let x = -5

if x > 0 {
    println(x)
}
else {
    println("Less than 0")
}

if x > 0 {
    println("Yes, \(x) is greater than zero")
}
else {
    println("No, \(x) is Less than zero")
}
*/

//let y = 0
//
//if y > 0 {
//    println("Yes, \(y) is greater than zero")
//}
//else if y == 0 {
//    println("Boom, \(y) is equal to zero!")
//}
//else {
//    println("Np, \(y) is less than zero")
//}
//
//var z = 0
//while z < 100 {
//    println("Hey! \(z)")
//    ++z
//}

// var i = 1; 100 times
for i in 1...100 {
    println("print the current iteration: \(i)")

}

// var i = 1; 99 times; For in Loops
for i in 1..<100 {
    println("print the current iteration: \(i)")
    
}
