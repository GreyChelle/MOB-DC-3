//
//  RadioViewController.swift
//  LEsson11Notifications
//
//  Created by Michelle Veronica Harper on 7/8/15.
//  Copyright (c) 2015 Michelle Veronica Harper. All rights reserved.
//
//always put import foundation before using NS because NS is not apart of swift language
//remove observer when removing a class because it will not remove if you just remove class
//always put colon after receiver in selector like selector: "receiver:"

import UIKit

class RadioViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
       
        let notifcation = NSNotification(name: "Hello World", object: self)
        
        let center = NSNotificationCenter.defaultCenter()
        center.postNotification(notifcation)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

