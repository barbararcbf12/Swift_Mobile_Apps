//
//  ViewController.swift
//  AutoLayout
//
//  Created by Bárbara Ferreira on 29/03/2018.
//  Copyright © 2018 Barbara Ferreira. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBAction func abrirAlerta(_ sender: Any) {
        let alert = UIAlertController(title: "Adicionar contato!", message: "Deseja adicionais um contato?", preferredStyle: .actionSheet)//preferredStyle: .alert)
        
        let confirm = UIAlertAction(title: "Confirm", style: .default) { (acao) in
            print("Botão confirmar pressionado!")
        }
        
        let cancel = UIAlertAction(title: "Cancel", style: .destructive, handler: nil)
        
        alert.addAction(confirm)
        alert.addAction(cancel)
        present(alert, animated: true, completion: nil)
    }
    
    @IBOutlet weak var campoTexto: UITextField!
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "enviarDados"{
            //print("oi!")
            let destino = segue.destination as! ProductsViewController
            destino.textoRecebido = campoTexto.text!
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

