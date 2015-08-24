//
//  ViewController.swift
//  UIViewAnimation
//
//  Created by Michelle Veronica Harper on 8/10/15.
//  Copyright (c) 2015 Michelle Veronica Harper. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var square: UIView!

    @IBAction func animate(sender: UIBarButtonItem) {
        
        if sender.title! == "Fade Out" {
            UIView.animateWithDuration(0.5, animations:{ () Void in
                self.square.alpha = 0 })
        }
    } else if sender.title! == "Fade In" {
    UIView.animateWithDuration(0.5, delay: 1.0, options: UIViewAnimationOptions.CurveEaseInOut, animations: { () -> Vod In self.square.alpha = 1
    self.square.backgroundColor = UIColor.yellowColor()}, )
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

