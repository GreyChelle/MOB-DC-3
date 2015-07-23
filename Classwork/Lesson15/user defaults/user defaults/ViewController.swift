//
//  ViewController.swift
//  user defaults
//
//  Created by Michelle Veronica Harper on 7/22/15.
//  Copyright (c) 2015 Michelle Veronica Harper. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var label: UILabel!
    let defaults = NSUserDefaults.standardUserDefaults()
    //return zero or emty string so that it doesn't show up as nil
    var counter = 0 {
    didSet{
        println("did update \(counter)")
            label.text = "\(counter)"
    
    defaults.setInteger(num, forKey: counterID)
    defaults.synchronize() //synchronize or save now

    
    }
        willSet { println("value before setting \(counter))"
    }

    
    @IBAction func button(sender: AnyObject) {
        let labelNumber = label.text?.toInt()
        if let labelNumber = labelNumber {
            
        label.text = "\(labelNumber)"
        
        
            let previousSessionNumber = defaults.intergerForKEy(counterID)
            label.text = "\(previousSessionNumber)"
        }
//        if let num = label.text?.toInt() {
//            let defaults = NSUserDefaults.standardUserDefaults()
//            //defaults{"key"] = "value"
//            defaults.setInteger(num, forKey: counterID)
//            // Do any additional setup after loading the view, typically from a nib.
//        }

    }
    override func viewDidLoad() {
        super.viewDidLoad()
    
        }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

