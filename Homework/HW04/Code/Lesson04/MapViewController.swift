//
//  MapViewController.swift
//  Lesson04
//
//  Created by Rudd Taylor on 9/28/14.
//  Copyright (c) 2014 General Assembly. All rights reserved.
//

import UIKit

class MapViewController: UIViewController, UITableViewDelegate, UITextFieldDelegate, UITableViewDataSource {
    
//Add TWO text views and a table view to this view controller, either using code or storybaord.
    
    @IBOutlet weak var field1: UITextField!
    @IBOutlet weak var field2: UITextField!
//Aren't we already using tableView as a var in the ArrayViewController? Shouldn't I be changing it to tableView2?
    @IBOutlet weak var tableView: UITableView!

//The KEY in the dictionary should be the string in the first text view, the VALUE should be the second.
var Dic = [[String: String]]()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        field1.delegate = self
        field2.delegate = self
        tableView.delegate = self
        tableView.dataSource = self
    
//Start with UIKeyboardWillShowNotification and NSNotificationCenter
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "keyboardWillShow:", name: UIKeyboardWillShowNotification, object: nil)
        
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "keyboardWillNotShow:", name: UIKeyboardWillHideNotification, object: nil)
        /*
        TODO three: Add TWO text views and a table view to this view controller, either using code or storybaord. Accept keyboard input from the two text views. When the 'return' button is pressed on the SECOND text view, add the text view data to a dictionary. The KEY in the dictionary should be the string in the first text view, the VALUE should be the second.
        TODO four: Make this class a UITableViewDelegate and UITableViewDataSource that supply this table view with cells that correspond to the values in the dictionary. Each cell should print out a unique pair of key/value that the map contains. When a new key/value is inserted, the table view should display it.
        TODO five: Make the background of the text boxes in this controller BLUE when the keyboard comes up, and RED when it goes down. Start with UIKeyboardWillShowNotification and NSNotificationCenter.
        */
    }
//Accept keyboard input from the two text views.  When the 'return' button is pressed on the SECOND text view, add the text view data to a dictionary. The KEY in the dictionary should be the string in the first text view, the VALUE should be the second.
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        if textField == field1 {
            field1.resignFirstResponder()
            field2.becomeFirstResponder()
        } else {
            field2.resignFirstResponder()
            
            Dic.append(["name": field1.text, "code": field2.text])
            
            tableView.reloadData()
            
            field1.text = ""
            field2.text = ""
        }
        return true
}
//Make this class a UITableViewDelegate and UITableViewDataSource that supply this table view with cells that correspond to the values in the dictionary. Each cell should print out a unique pair of key/value that the map contains. When a new key/value is inserted, the table view should display it.
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Dic.count
    }
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("nameCell", forIndexPath: indexPath) as! UITableViewCell
        let currentName = Dic[indexPath.row]
        cell.textLabel?.text = currentName["name"]
        cell.detailTextLabel?.text = currentName["code"]
        
        return cell
    }
//Make the background of the text boxes in this controller BLUE when the keyboard comes up, and RED when it goes down. Start with UIKeyboardWillShowNotification and NSNotificationCenter.
    
    func keyboardWillShow(notification:NSNotification) {
    let UIKeyboardWillShowNotification = UIColor.blueColor()
    }
    
    func keyboardWillNotShow(notification:NSNotification) {
        let UIKeyboardWillHideNotification = UIColor.redColor()
    }
}





















