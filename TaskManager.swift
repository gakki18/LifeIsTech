//
//  TaskManager.swift
//  ParseStarterProject
//
//  Created by 稲垣吉政 on 2015/03/05.
//  Copyright (c) 2015年 Parse. All rights reserved.
//

import UIKit

var taskMgr: TaskManager = TaskManager()

struct task {
    var name = "Un-Named"
    var desc = "Un-Described"
}

class TaskManager: NSObject {
    
    var tasks : [task] = []
    
    func addTask(name : String, desc: String){
        tasks.append(task(name: name, desc: desc))
    }
}
