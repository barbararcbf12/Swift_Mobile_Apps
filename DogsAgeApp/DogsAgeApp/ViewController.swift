//
//  ViewController.swift
//  DogsAgeApp
//
//  Created by Bárbara Ferreira on 28/03/2018.
//  Copyright © 2018 Barbara Ferreira. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var result: UILabel!
    
    @IBOutlet weak var resultAge: UILabel!
    @IBOutlet weak var fieldDogAge: UITextField!
    
    @IBAction func findAge(_ sender: Any) {
        let idade = Int(fieldDogAge.text!)! * 7
        resultAge.text = String(idade)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

