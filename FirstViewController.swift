//
//  FirstViewController.swift
//  ParseStarterProject
//
//  Created by 稲垣吉政 on 2015/03/05.
//  Copyright (c) 2015年 Parse. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet var txtTask: UITextField!//
    @IBOutlet var txtDesc: UITextField!//none
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //-----以下がdata------
    @IBAction func btnAddTask_Click(sender: UIButton) {
        println("the button was clicked")
        taskMgr.addTask(txtTask.text, desc: txtDesc.text);
        self.view.endEditing(true)
        txtTask.text = ""
        txtDesc.text = ""//none
        self.tabBarController?.selectedIndex = 0;
    }
    
    // IOS Touch Functions
    override func touchesBegan(touches: NSSet!, withEvent event: UIEvent!) {
        self.view.endEditing(true)
    }
    
    //  UITextField Delegate　// called when 'return' key pressed. return NO to ignore.
    func textFieldShouldReturn(textField: UITextField!) -> Bool{
        textField.resignFirstResponder();
        return true
        
    }
    
}