//
//  ViewController.swift
//  Lesson12Constraints2
//
//  Created by Michelle Veronica Harper on 7/13/15.
//  Copyright (c) 2015 Michelle Veronica Harper. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var emailField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
       
        let errorLabel = UILabel(frame: CGRectMake(30, 40, 50, 60))
        
        //set contraints instead of springs and structs
        errorLabel.setTranslatesAutoresizingMaskIntoConstraints(false)
        
        errorLabel.text = "We couldn't find your email :/"
        errorLabel.textColor = UIColor.redColor()
        errorLabel.backgroundColor = UIColor.yellowColor()
        errorLabel.numberOfLines = 0
        view.addSubview(errorLabel)
        
        //set constraint with NS
        let leftConstraint = NSLayoutConstraint(item: errorLabel,
            attribute: NSLayoutAttribute.Left,
            relatedBy: NSLayoutRelation.Equal,
            toItem: self.view,
            attribute: NSLayoutAttribute.Left,
            multiplier: 1.0, constant: 10)
        
        //the constant moves down (positively)
        
        let topConstraint = NSLayoutConstraint(item: errorLabel,
            attribute: NSLayoutAttribute.Top,
            relatedBy: NSLayoutRelation.Equal,
            toItem: emailField,
            attribute: NSLayoutAttribute.Bottom,
            multiplier: 1.0, constant: 10)
        
        let rightConstraint = NSLayoutConstraint(item: errorLabel,
            attribute: NSLayoutAttribute.Right,
            relatedBy: NSLayoutRelation.Equal,
            toItem: self.view,
            attribute: NSLayoutAttribute.Right,
            multiplier: 1.0, constant: 0)
        
        leftConstraint.active = true
        topConstraint.active = true
        rightConstraint.active = true
            
        }

}

