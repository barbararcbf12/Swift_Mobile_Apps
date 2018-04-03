//
//  AddViewController.swift
//  TasksList-Swift
//
//  Created by Bárbara Ferreira on 30/03/2018.
//  Copyright © 2018 Barbara Ferreira. All rights reserved.
//

import UIKit

class AddViewController: UIViewController {
    
    @IBOutlet weak var taskField: UITextField!
    
    @IBAction func addTask(_ sender: Any) {
        //chcking if there's input
        if let typedText = taskField.text {
            let task = TaskUserDefaults()
            task.save(task: typedText)
            taskField.text = ""
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //Hidding keyboard when click the screen
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
