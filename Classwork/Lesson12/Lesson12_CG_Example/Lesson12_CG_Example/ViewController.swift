//
//  ViewController.swift
//  Lesson12_CG_Example
//
//  Created by Michelle Veronica Harper on 7/13/15.
//  Copyright (c) 2015 Michelle Veronica Harper. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let squareA = UIView(frame: CGRectMake(40, 40, 90, 90))
        squareA.backgroundColor = UIColor.purpleColor()
        view.addSubview(squareA)

        let squareBRect = CGRectMake(
            squareA.frame.origin.x + 100,
            squareA.frame.origin.y + 150,
            squareA.frame.size.width,
            squareA.frame.size.height)

        let squareB = UIView(frame: squareBRect)
        
        squareB.backgroundColor = UIColor.redColor()
        
        view.addSubview(squareB)

}

}