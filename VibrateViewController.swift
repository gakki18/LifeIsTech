//
//  VibrateViewController.swift
//  ParseStarterProject
//
//  Created by 稲垣吉政 on 2015/03/01.
//  Copyright (c) 2015年 Parse. All rights reserved.
//

import UIKit
import AudioToolbox

class VibrateViewController: UIViewController {
    
    @IBOutlet var vibbtn :UIButton!
    @IBAction func buttonTapped(sender: AnyObject) {
    AudioServicesPlayAlertSound(SystemSoundID(kSystemSoundID_Vibrate))
    println(" 振動")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

}
