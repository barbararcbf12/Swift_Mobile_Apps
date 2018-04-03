//
//  ViewController.swift
//  MyNotes_Swift
//
//  Created by Bárbara Ferreira on 30/03/2018.
//  Copyright © 2018 Barbara Ferreira. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var textField: UITextView!
    let key = "myNote"
    
    //save notes to device
    @IBAction func saveButton(_ sender: Any) {
        if let text = textField.text {
            UserDefaults.standard.set( text, forKey: key )
        }
    }
    
    //get notes
    func getNote() -> String {
        if let textReturned = UserDefaults.standard.object(forKey: key) {
            return textReturned as! String
        }
        return ""
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
    
    //Hidding keyboard when click the screen
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        //print("User touched screen")
        view.endEditing(true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textField.text = getNote()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

