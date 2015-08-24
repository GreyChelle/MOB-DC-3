//
//  ViewController.swift
//  CatYears
//
//  Created by Michelle Veronica Harper on 7/29/15.
//  Copyright (c) 2015 Michelle Veronica Harper. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var catHumanAge: UITextField!
    @IBOutlet weak var catAge: UILabel!

    @IBOutlet weak var sud: UIButton!
    @IBAction func returnCatAge(sender: AnyObject) {
       var humanAge = catHumanAge.text.toInt()
       if humanAge != nil {
        var actualCatAge = humanAge! * 7
        catAge.text = "That cat is \(actualCatAge) years old mang!"
       } else {
        catAge.text = "Please enter a number in the box"
        }
        }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

