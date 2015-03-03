//
//  TableViewController.swift
//  ParseStarterProject
//
//  Created by 稲垣吉政 on 2015/03/03.
//  Copyright (c) 2015年 Parse. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tbl_viewlist: UITableView!
    
    var items = [Dictionary<String, String>]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        // リストの件数を返す
        return  items.count
    }
    
    // セルをitemsから設定する処理
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell{
        let cell: UITableViewCell = UITableViewCell(style: UITableViewCellStyle.Subtitle, reuseIdentifier: "Cell")!
        cell.textLabel?.text = items[indexPath.row]["name"]!
        cell.detailTextLabel?.text = items[indexPath.row]["detail"]
        return cell;
    }
    
    // セルをクリックした時に発生するイベント
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath){
        println(indexPath.row)
    }
    
    // 追加ボタン押下
    @IBAction func btn_pushAdd(sender: AnyObject) {
        println("add")
    }
    
}