//
//  FindViewController.swift
//  ParseStarterProject
//
//  Created by 稲垣吉政 on 2015/02/28.
//  Copyright (c) 2015年 Parse. All rights reserved.
//

import UIKit
import Parse

class FindViewController: UIViewController {
    @IBOutlet var friendname:UITextField!
    @IBAction func dlObjectButton(){
        var query = PFQuery(className:"hoge")
        query.whereKey("username", equalTo:friendname)
        query.findObjectsInBackgroundWithBlock {
            (objects: [AnyObject]!, error: NSError!) -> Void in
            if error == nil {
                // The find succeeded.
                NSLog("Successfully retrieved \(objects.count) scores.")
                // Do something with the found objects
                for object in objects {
                    NSLog("%@", object.objectId)
                }
            } else {
                // Log details of the failure
                NSLog("Error: %@ %@", error, error.userInfo!)
            }
        }
    }

}
