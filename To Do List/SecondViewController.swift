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
    
    var items = [ToDoItem]()

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tittleItem.delegate = self
        self.descItem.delegate   = self
    //    saveItemOnArray()
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func addButtonListener(sender: AnyObject) {
        let newItem = ToDoItem(name: self.tittleItem.text!, description: self.descItem.text!)
        
        print(newItem.getItemTittle())
        print(newItem.getItemDescription())
        
   //     items = retrieveItemsOnArray()
        items.append(newItem)
        
      //  saveItemOnArray()
        
        resetTextFields()
        
        let alertController = UIAlertController(title: "Done!", message:
            "Your item was added sucessfully", preferredStyle: UIAlertControllerStyle.Alert)
        
        alertController.addAction(UIAlertAction(title: "Ok", style: UIAlertActionStyle.Default,handler: nil))
        
        self.presentViewController(alertController, animated: true, completion: nil)
        print(items)
    }
    
    @IBAction func resetButtonListener(sender: AnyObject) {
        resetTextFields()
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool{
        textField.resignFirstResponder()
        return true
    }
    
    func resetTextFields(){
        tittleItem.text = ""
        descItem.text   = ""

    }
    
    func saveItemOnArray(){
        NSUserDefaults.standardUserDefaults().setObject(items, forKey: "Items")
    }
    
    func retrieveItemsOnArray() -> [ToDoItem]{
        let array = NSUserDefaults.standardUserDefaults().objectForKey("Items")! as! NSArray as! [ToDoItem]
        if array.count != 0{
            return array
        }
        return items
    }
    
    
}

