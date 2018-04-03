//
//  ViewController.swift
//  DieselOrGasApp
//
//  Created by Bárbara Ferreira on 28/03/2018.
//  Copyright © 2018 Barbara Ferreira. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var ethanolPriceField: UITextField!
    
    @IBOutlet weak var gasPriceField: UITextField!
    
    @IBAction func calcButton(_ sender: Any) {
        
        if let ethanolPrice = ethanolPriceField.text {
            if let gasPrice = gasPriceField.text {
                
                //validate entered values
                let result = self.validateFields( ethanolPrice: ethanolPrice, gasPrice: gasPrice )
                
                if (result.validEthanol && result.validGas) {
                    //calculating better option
                    self.calcBetterOption( ethanolPrice: ethanolPrice, gasPrice: gasPrice )
                }
                else {
                    if !result.validGas { resultCalc.text = "Enter gas price" }
                    else if !result.validEthanol { resultCalc.text = "Enter ethanol price" }
                }
                
            }
        }
    }
    
    func validateFields( ethanolPrice: String, gasPrice: String ) -> (validEthanol: Bool, validGas: Bool) {
        var validEthanol = true
        var validGas = true
        if ethanolPrice.isEmpty { validEthanol = false }
        else if gasPrice.isEmpty { validGas = false }
        return (validEthanol, validGas)
    }
    
    func calcBetterOption( ethanolPrice: String, gasPrice: String ) {
        if let ethanolValue = Double(ethanolPrice) {
            if let gasValue = Double(gasPrice) {
                //calculating: disel price / gas price => if result >= 0.7, gas is better
                let result = ethanolValue/gasValue
                if result >= 0.7 { self.resultCalc.text = "Better using Gas!"}
                else{ self.resultCalc.text = "Better using Ethanol!" }
            }
        }
    }
    
    @IBOutlet weak var resultCalc: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

