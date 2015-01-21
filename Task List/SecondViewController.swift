//
//  SecondViewController.swift
//  Task List
//
//  Created by mlewis on 1/21/15.
//  Copyright (c) 2015 mlewis. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet var txtTask: UITextField!
    @IBOutlet var txtDesc: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //EVENTS
    @IBAction func btnAddTask_Click(sender: UIButton){
        taskMGR.addTask(txtTask.text, desc: txtDesc.text);
        self.view.endEditing(true)
        txtTask.text = ""
        txtDesc.text = ""
        self.tabBarController?.selectedIndex = 0;
    }
    
    override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
        self.view.endEditing(true)
    }
    
    //UITextFieldDelegate
    func textFieldShouldReturn(textField: UITextField) -> Bool{
        textField.resignFirstResponder()
        return true
    }


}

