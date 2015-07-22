//
//  ProfileViewController.swift
//  AIM
//
//  Created by Michelle Veronica Harper on 6/22/15.
//  Copyright (c) 2015 Michelle Veronica Harper. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {
    
    var name: String?
    var age: String?
    var sex: String?
    var location: String?
    
    @IBOutlet weak var nameField: UILabel!
    @IBOutlet weak var ageField: UILabel!
    @IBOutlet weak var sexField: UILabel!
    @IBOutlet weak var locationField: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        if let name = name {
            nameField.text = name
    
        }
        
        if let sex = sex {
            sexField.text = sex
        }
        
        if let age = age {
            ageField.text = age

    }
        
        if let location = location {
            locationField.text = location

}
}
}