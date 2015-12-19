 //
//  TaskManager.swift
//  My Task List
//
//  Created by Meiyi He on 12/14/15.
//  Copyright © 2015 Meiyi He. All rights reserved.
//

import UIKit

 
 var taskMgr : TaskManager = TaskManager()
 //Global accessed within the whole project 
 
 struct task{
    var name = "Un-Named"
    var desc = "Un-Described"
 }
 
class TaskManager: NSObject {

    var tasks = [task]()
    //declare array tasks to hold task object with 2 params
    
    func addTask(name: String , desc: String){
        //append task into tasks array 
        
        tasks.append(task(name: name, desc: desc))
    }
}
