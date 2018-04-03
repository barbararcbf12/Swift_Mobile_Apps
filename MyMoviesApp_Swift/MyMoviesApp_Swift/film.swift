//
//  film.swift
//  MyMoviesApp_Swift
//
//  Created by Bárbara Ferreira on 30/03/2018.
//  Copyright © 2018 Barbara Ferreira. All rights reserved.
//

import UIKit

//Defining class Film
class Film {
    
    //attributes
    var title: String!
    var description: String
    var image: UIImage
    
    //Initializer
    init( title: String, description: String, image: UIImage ) {
        self.title = title
        self.description = description
        self.image = image
    }
    
}
