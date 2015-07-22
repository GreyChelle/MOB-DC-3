//: Playground - noun: a place where people can play

import UIKit

let cgWidth: CGFloat = 10.0
let width: Float = 10.0
let widthAgain = 10.0 //same as width

//x,y.width,heightcalculates from left to right and up to down
//points
let point = CGPoint(x:10, y:10)
let size = CGSize(width: 20, height: 20)

//make rectangle
let rect = CGRectMake(10, 10, 20, 20)
rect.origin //get point
rect.size //get size

//frame is width and height; usually frame is 0,0 and height and width are same? 
