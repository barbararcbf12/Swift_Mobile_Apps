//
//  ProductsViewController.swift
//  AutoLayout
//
//  Created by Bárbara Ferreira on 29/03/2018.
//  Copyright © 2018 Barbara Ferreira. All rights reserved.
//

import UIKit

class ProductsViewController: UIViewController {

    @IBOutlet weak var resultadoEnvio: UILabel!
    
    var textoRecebido: String = "0"
    
    override func viewDidLoad() {
        super.viewDidLoad()

        resultadoEnvio.text = textoRecebido
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
