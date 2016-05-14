//
//  SecondViewController.swift
//  To Do List
//
//  Created by Fabian Vergara on 2016-05-13.
//  Copyright © 2016 fvergara. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITextFieldDelegate{
    
    @IBOutlet var tittleItem: UITextField!
    @IBOutlet var descItem: UITextField!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tittleItem.delegate = self
        self.descItem.delegate   = self
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func addButtonListener(sender: AnyObject) {
        
    }
    
    @IBAction func resetButtonListener(sender: AnyObject) {
        tittleItem.text = ""
        descItem.text   = ""
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool{
        textField.resignFirstResponder()
        return true
    }
    
}

