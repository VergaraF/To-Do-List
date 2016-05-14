//
//  todoitem.swift
//  To Do List
//
//  Created by Fabian Vergara on 2016-05-14.
//  Copyright © 2016 fvergara. All rights reserved.
//

import Foundation

class ToDoItem{
    
    private var itemTittle: String
    private var itemDescription: String
    
    init (name: String, description: String){
        self.itemTittle = name
        self.itemDescription = description
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
