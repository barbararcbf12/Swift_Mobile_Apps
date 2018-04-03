//
//  ViewController.swift
//  GenerationRandomNumbers
//
//  Created by Bárbara Ferreira on 28/03/2018.
//  Copyright © 2018 Barbara Ferreira. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var numberResult: UILabel!
    
    @IBAction func generateButton(_ sender: UIButton) {
        
        let numero = arc4random_uniform(11)
        numberResult.text = String(numero)
        
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

