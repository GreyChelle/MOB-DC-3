//
//  StudentStore.swift
//  Students
//
//  Created by Michelle Veronica Harper on 7/27/15.
//  Copyright (c) 2015 Thomas Degry. All rights reserved.
//

import UIKit
import CoreData


class StudentStore {
    //singleton
    static let sharedStore = StudentStore ()
    var context: NSManagedObjectContext
    
    init() {
        println("Student store creator")
        
        //get a reference to app delegate
        let appDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
        
        //get its content
        context = appDelegate.managedObjectContext!
        
    }
    func addStudent(name: String, location: String) {
        let newStudent = NSEntityDescription.insertNewObjectForEntityForName("Student",
            inManagedObjectContext: context) as! Student
        newStudent.name = name
        newStudent.location = name
        
        var error: NSError?
        context.save(&error)
        
        if error != nil {
            println("An error occured while adding a student")
        }
    }
    func getAllStudents() -> [Student] {
        let sortDescription = NSSortDescpritor(key:"name", ascending: false)
        let predictate = NSPredicate(format: "Any name Contains %@", "a"
    let fetchRequest = NSFetchRequest(entityName: "Student")
    
    var error: NSError?
    let results = context.executeFetchRequest(fetchRequest, error: &error) as! [Student]
    
    if error != nil {
    println("could not fetch data")
    
        }
        return results
}

    func removeStudent(student: Student) {
        context.deleteObject(student)
        context.save(nil)
}

}