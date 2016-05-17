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
    
    
    @IBOutlet var toDoItemsList: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        items = retrieveItemList()!
    }
    
  
    override func viewDidAppear(animated: Bool) {
        toDoItemsList.reloadData()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        return true
    }
    
    func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if (editingStyle == UITableViewCellEditingStyle.Delete) {
            items.removeAtIndex(indexPath.row)
            print("delete")
            toDoItemsList.reloadData()
            saveItemList(items)

        }
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



