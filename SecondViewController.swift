//
//  SecondViewController.swift
//  ParseStarterProject
//
//  Created by 稲垣吉政 on 2015/03/05.
//  Copyright (c) 2015年 Parse. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITableViewDataSource ,UITableViewDelegate{
    
    @IBOutlet weak var tblTasks: UITableView!
    var idx = -1
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        tblTasks.delegate = self;
        tblTasks.dataSource = self;
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //Returning to view
    override func viewWillAppear(animated: Bool) {
        tblTasks.reloadData();
    }
    
    
    //UITableViewDelete
    
    func tableView(tableView: UITableView!, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath!){
        
        if(editingStyle == UITableViewCellEditingStyle.Delete){
            taskMgr.tasks.removeAtIndex(indexPath.row)
            tblTasks.reloadData();
        }
    }
    
    
    
    // UITableViewDataSource
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell: UITableViewCell = UITableViewCell(style: UITableViewCellStyle.Subtitle, reuseIdentifier: "test")
        cell.textLabel!.text = taskMgr.tasks[indexPath.row].name
        cell.detailTextLabel!.text = taskMgr.tasks[indexPath.row].desc
        
        return cell
    }
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath){
        idx = indexPath.row
        performSegueWithIdentifier("toViewController", sender: self)
        
    }
    
    
    
    func tableView(tableView: UITableView, numberOfRowsInSection section:Int) -> Int {
        return taskMgr.tasks.count
    }
}
