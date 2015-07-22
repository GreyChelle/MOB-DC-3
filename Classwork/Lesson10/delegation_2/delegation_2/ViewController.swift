//
//  ViewController.swift
//  delegation_2
//
//  Created by Michelle Veronica Harper on 7/6/15.
//  Copyright (c) 2015 Michelle Veronica Harper. All rights reserved.
//

import UIKit

class CountUpViewConttrolller: UIViewController{
    IBAction func addOne(sender:UIButton) {
        println("add one")
    
    }
    IBAction func dismiss(sender: UIButton) {
        self.dismissViewControllerAnimated(true, completion: <#(() -> Void)?##() -> Void#>)
    }
}


