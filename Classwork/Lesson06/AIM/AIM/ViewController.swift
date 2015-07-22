//
//  ViewController.swift
//  AIM
//
//  Created by Michelle Veronica Harper on 6/22/15.
//  Copyright (c) 2015 Michelle Veronica Harper. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var ageField: UITextField!
    @IBOutlet weak var locationField: UITextField!
    @IBOutlet weak var sexField: UITextField!
   
    @IBOutlet weak var submitButton: UIButton!
    @IBOutlet weak var clearButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTextFields()
        setupButtons ()
        
       
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func setupTextFields() {
        nameField.placeholder = "Name"
        ageField.placeholder = "Age"
        sexField.placeholder = "Sex"
        locationField.placeholder = "Location"
        
        
        
        formatTextField(nameField)
        formatTextField(ageField)
        formatTextField(sexField)
        formatTextField(locationField)
        
    }

    func formatTextField(textField: UITextField) {
    textField.keyboardType = (textField == ageField) ? .NumberPad : .Default
        textField.textColor = (textField == sexField) ? UIColor.redColor() : UIColor.blueColor()
    }
    
    func setupButtons() {
        clearButton.setTitle("Clear", forState: UIControlState.Normal)
        submitButton.setTitle("Submit", forState: UIControlState.Normal)
    }
    
    @IBAction func submitAction(sender: AnyObject) {
        
        
    }
    @IBAction func clearAction(sender: AnyObject) {
        nameField.text = ""
        ageField.text = ""
        sexField.text = ""
        locationField.text = ""
        
    }

    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        print("prepare for segue")
        if segue.identifier == "showProfile" {
            let destinationVC = segue.destinationViewController as! ProfileViewController
            destinationVC.age = ageField.text
            destinationVC.name = nameField.text
            destinationVC.sex = sexField.text
            destinationVC.location = locationField.text
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

