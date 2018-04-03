//
//  ViewController.swift
//  FrasesDoDiaSwift
//
//  Created by Bárbara Ferreira on 28/03/2018.
//  Copyright © 2018 Barbara Ferreira. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var frasesResult: UILabel!
    
    @IBAction func button(_ sender: Any) {
        
        var frases: [String] = []
        frases.append("Se você traçar metas absurdamente altas e falhar, seu fracasso será muito melhor que o sucesso de todos.")
        frases.append("Ter sucesso é falhar repetidamente, mas sem perder o entusiasmo.")
        frases.append("Não é o mais forte que sobreviverá, nem o mais inteligente. Que sobrevive é o mais dispost à mudança.")
        let num = arc4random_uniform(3)
        frasesResult.text = frases[Int(num)]
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

