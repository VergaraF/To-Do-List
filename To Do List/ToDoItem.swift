//
//  todoitem.swift
//  To Do List
//
//  Created by Fabian Vergara on 2016-05-14.
//  Copyright © 2016 fvergara. All rights reserved.
//

import Foundation

class ToDoItem: NSObject, NSCoding{
    
    private var itemTittle: String
    private var itemDescription: String
    
    init (name: String, description: String){
        self.itemTittle      = name
        self.itemDescription = description
        super.init()
    }
    
    required init(coder aDecoder: NSCoder) {
        self.itemTittle      = aDecoder.decodeObjectForKey("itemTittle")      as! String
        self.itemDescription = aDecoder.decodeObjectForKey("itemDescription") as! String
    }
    
    func encodeWithCoder(aCoder: NSCoder) {
        aCoder.encodeObject(self.itemTittle,      forKey: "itemTittle")
        aCoder.encodeObject(self.itemDescription, forKey: "itemDescription")
    }
    
    func setItemTittle(name: String){
        self.itemTittle = name
    }
    
    func setItemDescription(description: String){
        self.itemDescription = description
    }
    
    func getItemTittle()-> String{
        return self.itemTittle
    }
    
    func getItemDescription() -> String{
        return self.itemDescription
    }
    
    
    
}
