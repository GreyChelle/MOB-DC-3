//
//  SecondViewController.swift
//  ViewExercises
//
//  Created by Rudd Taylor on 9/9/14.
//  Copyright (c) 2014 Rudd Taylor. All rights reserved.
//

import UIKit

class SecondViewController: ExerciseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let squareA = UIView(frame: CGRectMake(40, 40, 20, 20))
        squareA.backgroundColor = UIColor.blueColor()
        view.addSubview(squareA)
        
        
        
        let squareB = UIView(frame: CGRectMake(
            squareA.frame.origin.x + 150,
            squareA.frame.origin.y,
            squareA.frame.size.width,
            squareA.frame.size.height))
        squareB.backgroundColor = UIColor.blueColor()
        view.addSubview(squareB)
        
        
        let squareC = UIView(frame: CGRectMake(0, 100, 20, 20))
        squareC.backgroundColor = UIColor.blueColor()
        view.addSubview(squareC)
        
        
        let squareD = UIView(frame: CGRectMake(200, 0, 20, 20))
        squareD.backgroundColor = UIColor.blueColor()
        view.addSubview(squareD)

        self.exerciseDescription.text = "View 2"
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Next", style: .Plain, target: self, action: "next")
        /* TODO:
        Build four blue squares, 20 points wide, one in each corner of the screen. 
        They must stay in their respective corners on device rotation. 
        
        Use Autolayout.
        
        Your view should be in self.exerciseView, not self.view
        */
    }
    
    override func shouldAutorotate() -> Bool {
        return true
    }
    
    func next() {
        self.performSegueWithIdentifier("three", sender: nil)
    }
}
