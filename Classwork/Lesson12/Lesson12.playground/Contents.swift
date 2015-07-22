//: Playground - noun: a place where people can play

class TestClass {
//age is optional
    var age: Int?
    
}

class AnotherClass {
    func passTest(test: TestClass) {
        var testB = test
        testB.age
    }
}

//make seperate instances of TestClass
var testA = TestClass()
//var testB = TestClass
var anotherTest = AnotherClass()

testA.age = 10
anotherTest.passTest(testA)

//singleton
//class ASingletonClass {
// let static = "something"
//}

//nsnotificationcenter adds observer and is an implimentation of observer class like when showing a keyboard or hiding

//autoresizing masks allows images to be flexible in any way to look nice in any direction and shows more or less UIViewAutoResizingMasks; prior used springs and structs
