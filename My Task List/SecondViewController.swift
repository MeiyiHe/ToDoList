//
//  SecondViewController.swift
//  My Task List
//
//  Created by Meiyi He on 12/14/15.
//  Copyright © 2015 Meiyi He. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITextFieldDelegate  {

    @IBOutlet var txtTask: UITextField!
    @IBOutlet var txtDesc: UITextField!
    //the ! means we are declaring a variable but didn't assigning it yet, null until we set it
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //Button-Click Events
    @IBAction func btnAddTask_Click(sender: UIButton){
        taskMgr.addTask(txtTask.text!, desc: txtDesc.text!);
        self.view.endEditing(true)
        txtTask.text = ""
        txtDesc.text = ""
        self.tabBarController?.selectedIndex = 0;
    }
    
    
    //iOS touch functions
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        self.view.endEditing(true);
    }
    
    //UITextFieldDelegate
    // called when 'return' key pressed. return NO to ignore.
    func textFieldShouldReturn(textField: UITextField) -> Bool{
        
        textField.resignFirstResponder();
        //the first responder here is the keyboard
        
        return true
    }

}

