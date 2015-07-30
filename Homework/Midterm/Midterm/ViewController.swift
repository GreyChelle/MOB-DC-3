//
//  ViewController.swift
//  Midterm
//
//  Created by Michelle Veronica Harper on 7/15/15.
//  Copyright (c) 2015 Michelle Veronica Harper. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var resultLabel: UILabel!
    var firstNumber = Float()
    var secondNumber = Float()
    var isTypingNumber = false
    var result = Float()
    var operation = ""
    
    @IBAction func numberPressed(sender: UIButton) {
        //println("Number tapped is \(sender.titleLabel?.text.toIn)")
        var numberPressed = sender.currentTitle
        if isTypingNumber == true{
            resultLabel.text = resultLabel.text! + numberPressed!
        } else {
            resultLabel.text = numberPressed
        }
        isTypingNumber = true
    }
    
    @IBAction func operationButton(sender: UIButton) {
        operation = sender.currentTitle!
        isTypingNumber = false
        firstNumber = (resultLabel.text! as NSString).floatValue
        
    if operation == "+/-" {
    let value = resultLabel.text! as NSString
    var number = value.doubleValue
    number = -1 * number
    if number%1 == 0 {
    let newNumber = Int(number)
    resultLabel.text = String (newNumber)
    } else {
    resultLabel.text = "\(result)"
    }
        }
    }
    
       @IBAction func equalButton(sender: UIButton) {
        secondNumber = (resultLabel.text! as NSString).floatValue
        //hmm?
        if operation == "+" {
            result = firstNumber + secondNumber
        } else if operation == "-" {
            result = firstNumber - secondNumber
        } else if operation == "X" {
            result = firstNumber * secondNumber
        } else if operation == "/" {
            result = firstNumber / secondNumber
        } else if operation == "%" {
            result = (firstNumber * secondNumber) / 100
        }
        resultLabel.text = "\(result)"
    }
//         else if operation == "+/-" {
//            let value = resultLabel.text! as NSString
//            var number = value.doubleValue
//            number = -1 * number
//            if number%1 == 0 {
//                let newNumber = Int(number)
//                resultLabel.text = String (newNumber)
//        } else {
//        
      
    @IBAction func acButton(sender: UIButton) {
        firstNumber = 0
        secondNumber = 0
        isTypingNumber = false
        result = 0
        resultLabel.text = "\(result)"
    }
    
    @IBAction func decimalButton(sender: UIButton) {
        var decimalButton = sender.currentTitle
        resultLabel.text = resultLabel.text! + decimalButton!
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }



}