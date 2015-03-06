//
//  PushViewController.swift
//  ParseStarterProject
//
//  Created by 稲垣吉政 on 2015/03/06.
//  Copyright (c) 2015年 Parse. All rights reserved.
//

import UIKit

class PushViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func backgroundColor(){
        
        let topColor = UIColor(red:0.54, green:0.74, blue:0.74, alpha:1)
        let bottomColor = UIColor(red:0.07, green:0.13, blue:0.26, alpha:1)
        
        let gradientColors: [CGColor] = [topColor.CGColor, bottomColor.CGColor]
        
        let gradientLayer: CAGradientLayer = CAGradientLayer()
        
        gradientLayer.colors = gradientColors
        
        gradientLayer.frame = self.view.bounds
        
        //グラデーションレイヤーをビューの一番下に配置
        self.view.layer.insertSublayer(gradientLayer, atIndex: 0)
    }
}
    extension UIColor {
        class func hexStr (var hexStr : NSString, var alpha : CGFloat) -> UIColor {
            hexStr = hexStr.stringByReplacingOccurrencesOfString("#", withString: "")
            let scanner = NSScanner(string: hexStr)
            var color: UInt32 = 0
            if scanner.scanHexInt(&color) {
                let r = CGFloat((color & 0xFF0000) >> 16) / 255.0
                let g = CGFloat((color & 0x00FF00) >> 8) / 255.0
                let b = CGFloat(color & 0x0000FF) / 255.0
                return UIColor(red:r,green:g,blue:b,alpha:alpha)
            } else {
                return UIColor.whiteColor();
            }
        }
    }

//時間切れ・・
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

