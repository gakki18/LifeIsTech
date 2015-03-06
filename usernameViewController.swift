//
//  usernameViewController.swift
//  ParseStarterProject
//
//  Created by 稲垣吉政 on 2015/02/28.
//  Copyright (c) 2015年 Parse. All rights reserved.
//

import UIKit
import Parse

class usernameViewController: UIViewController {
    @IBOutlet var username:UITextField!
    @IBOutlet var imageView:UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    @IBAction func upObjectButton(){
        var hoge = PFObject(className:"hoge")
        hoge["username"] = username.text
        hoge.saveInBackgroundWithBlock {
            (success: Bool, error: NSError!) -> Void in
            if (success) {
                println("Save to username")
            } else {
                // There was a problem, check error.description
            }
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}