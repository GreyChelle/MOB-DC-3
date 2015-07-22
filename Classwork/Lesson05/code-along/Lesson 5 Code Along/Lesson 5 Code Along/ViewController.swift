////
////  ViewController.swift
////  Lesson 5 Code Along
////
////  Created by LOANER on 6/17/15.
////  Copyright (c) 2015 Thomas Degry. All rights reserved.
////
//
import UIKit
//
//class ViewController: UIViewController {
//    @IBOutlet weak var factLabel: UILabel!
//    @IBOutlet weak var generateButton: UIButton!
//    
//   var numberOfTimes = 0
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        
//        factLabel.text = "Hello"
//    }
//
//    @IBAction func generateFact(sender: UIButton) {
////        ++numberofTimes
////        factLabel.text = \(numberOfTimes) times
//        
//        let randomFact = myFactBook
//    }
//}

class ViewController:UIViewController {
    @IBOutlet weak var factLabel: UILabel!
    @IBOutlet weak var generateButton: UIButton!
    
    var numberofTimes = 0
    var myFactBook = Factbook()
    var myColorwheel = Colorwheel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        factLabel.text = "Hello"
    }
    @IBAction func generateFact (sender: UIButton) {
        let randomFact = myFactBook.randomFact()
        factLabel.text = randomFact
        
        let randomColor = myColorwheel.randomColor()
        view.backgroundColor = randomColor
        
        generateButton.setTitleColor(randomColor, forState: UIControlState.Normal)
    }
}
