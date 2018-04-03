//
//  ViewController.swift
//  SalvarDados
//
//  Created by Bárbara Ferreira on 30/03/2018.
//  Copyright © 2018 Barbara Ferreira. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //método de armazenamento, direto na device do usuário
        /*UserDefaults.standard.set("azul", forKey: "corFundo")
        let texto = UserDefaults.standard.object(forKey: "corFundo")
        print(texto)
        
        var comidas: [String] = ["pasta", "pizza", "pie" ]
        UserDefaults.standard.set(comidas, forKey: "comidas")
        let retorno = UserDefaults.standard.object(forKey: "corFundo")
        print(retorno)*/
        
        //método de remoção de dados salvos direto na device do usuário
        UserDefaults.standard.removeObject(forKey: "comidas")
        let retorno = UserDefaults.standard.object(forKey: "comidas")
        print(retorno)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

