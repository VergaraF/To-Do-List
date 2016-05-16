//
//  FirstViewController.swift
//  To Do List
//
//  Created by Fabian Vergara on 2016-05-13.
//  Copyright © 2016 fvergara. All rights reserved.
//

import UIKit

var items = [ToDoItem]()

class FirstViewController: UIViewController, UITableViewDelegate {
    
    let emptyTable = 3
  //  var items = [ToDoItem]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        items = retrieveItemList()!
      //  let userDefaults = NSUserDefaults.standardUserDefaults()
       // userDefaults.removeObjectForKey("itemsArray")
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int{

        return 3
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell{
        let cell = UITableViewCell(style: UITableViewCellStyle.Default,reuseIdentifier: "Cell")
        

        cell.textLabel!.text = "test"



        return cell
    }
    
    func retrieveItemList() -> [ToDoItem]? {
        if let unarchivedObject = NSUserDefaults.standardUserDefaults().objectForKey("itemsArray") as? NSData {
            return NSKeyedUnarchiver.unarchiveObjectWithData(unarchivedObject) as? [ToDoItem]
        }else{
            return items
        }
    }


}

