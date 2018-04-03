//
//  TaskUserDefaults.swift
//  TasksList-Swift
//
//  Created by Bárbara Ferreira on 30/03/2018.
//  Copyright © 2018 Barbara Ferreira. All rights reserved.
//

import UIKit

class TaskUserDefaults {
    
    let key = "listTasks"
    var tasks: [String] = []
    
    func remove(index: Int) {
        tasks = list()
        tasks.remove(at: index)
        UserDefaults.standard.set( tasks, forKey: key )
    }
    
    func save(task: String) {
        //Getting current list of tasks
        tasks = list()
        
        //Adding new task to tasks
        tasks.append(task)
        UserDefaults.standard.set( tasks , forKey: key )
    }
    
    func list() -> Array<String> {
        
        let data = UserDefaults.standard.object(forKey: key)
        
        if data != nil {
            return data as! Array<String>
        }
        else {
            return []
        }
        
    }
    
}
