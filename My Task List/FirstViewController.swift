//
//  FirstViewController.swift
//  My Task List
//
//  Created by Meiyi He on 12/14/15.
//  Copyright © 2015 Meiyi He. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    
    @IBOutlet var tblTasks: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    //returning to view
    override func viewWillAppear(animated: Bool) {
        tblTasks.reloadData();
    }
    
    //UITableViewDataSource: below 2 func have to have for the dataSource in the class header
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return taskMgr.tasks.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell{
        
 
        
        let cell: UITableViewCell = UITableViewCell(style:.Subtitle, reuseIdentifier: "test")
    

 
    
        //assign text to cell
        cell.textLabel?.text = taskMgr.tasks[indexPath.row].name
        cell.detailTextLabel?.text = taskMgr.tasks[indexPath.row].desc
        return cell
    }


}

