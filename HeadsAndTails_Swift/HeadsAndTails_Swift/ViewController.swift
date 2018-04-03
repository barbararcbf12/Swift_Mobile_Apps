//
//  ViewController.swift
//  HeadsAndTails_Swift
//
//  Created by Bárbara Ferreira on 29/03/2018.
//  Copyright © 2018 Barbara Ferreira. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "sendRandomNumber" {
            let viewDestination = segue.destination as! CoinViewController
            viewDestination.randomNumber = Int( arc4random_uniform(2) )
        }
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

