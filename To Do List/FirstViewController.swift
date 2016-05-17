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
    
   // let tableViewSize = items.count
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
        return items.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell{
        let cell = UITableViewCell(style: UITableViewCellStyle.Default,reuseIdentifier: "Cell")
    
        cell.textLabel!.numberOfLines = 2;
        cell.textLabel!.lineBreakMode = NSLineBreakMode.ByWordWrapping
        cell.textLabel!.text = items[indexPath.row].getItemTittle() + "\n" + items[indexPath.row].getItemDescription()



        return cell
    }

}



