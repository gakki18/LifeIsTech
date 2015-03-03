//
//  VibrateViewcontroller.swift
//  ParseStarterProject
//
//  Created by 稲垣吉政 on 2015/03/01.
//  Copyright (c) 2015年 Parse. All rights reserved.
//

import UIKit
import AVFoundation

class VibrateViewcontroller: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        AudioServicesPlaySystemSound(SystemSoundID(kSystemSoundID_Vibrate))
        
    }
}
