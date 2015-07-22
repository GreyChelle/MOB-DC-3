//
//  ViewController.swift
//  Lesson10
//
//  Created by Michelle Veronica Harper on 7/6/15.
//  Copyright (c) 2015 Michelle Veronica Harper. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        let swipe = UISwipeGestureRecognizer (target.self, action: "gestureAction")
        swipe.direction = .Right
        label.addGestureRecognizer (swipe)
        label.userInteractionEnabled = true
    }
    func gestureAction() {
        println("Gesture Performed")
        
        self.performSegueWithIdentifier("showModal", sender: nil)
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

