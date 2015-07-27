//
//  ViewController.swift
//  PROPERTYLISTSARRAYS
//
//  Created by Michelle Veronica Harper on 7/22/15.
//  Copyright (c) 2015 Michelle Veronica Harper. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    
    func setupTextFields() {
        movieField.
        
        formatTextField(movieField)
    }
    
    func formatTextField(textField: UITextField) {
        textField.keyboardType = (textField == movieField) ? .default : .ASCIICapable
    }
    
       @IBAction func submitButton(sender: UIButton) {
        
    }

   
   let movie = NSBundle.mainBundle().pathForResource("Movies", ofType: "plist")
    if let movie = movie {
        let movie = NSArray(contentsOfFile: movie)
        println(movie)
    }
    
        //        let students = NSArray(contentsOfFile: studentsPath)
        //        println(students)
    
//    let movie = NSBundle.mainBundle().pathForResource("Movies", ofType: "plist")
//    
//    if let studentsPath = studentsPath {
//        let students = NSArray(contentsOfFile: studentsPath)
//        println(students)
//    }

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

