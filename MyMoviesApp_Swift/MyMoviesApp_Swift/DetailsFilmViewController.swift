//
//  DetailsFilmViewController.swift
//  MyMoviesApp_Swift
//
//  Created by Bárbara Ferreira on 30/03/2018.
//  Copyright © 2018 Barbara Ferreira. All rights reserved.
//
import Foundation
import UIKit

class DetailsFilmViewController: UIViewController {
    
    @IBOutlet weak var ttDFVC: UILabel!
    @IBOutlet weak var imgDFVC: UIImageView!
    @IBOutlet weak var descDFVC: UILabel!
    
    var film: Film!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        ttDFVC.text = film.title
        imgDFVC.image = film.image
        descDFVC.text = film.description
        
    }
    
}
