//
//  ViewController.swift
//  MyMoviesApp_Swift
//
//  Created by Bárbara Ferreira on 30/03/2018.
//  Copyright © 2018 Barbara Ferreira. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
    
    //Creating array of objects of type Film
    var films: [Film] = []
    var titleFilm = ["Film 1", "Film 2", "Film 3", "Film 4", "Film 5", "Film 6", "Film 7", "Film 8", "Film 9", "Film 10"]
    var descriptionFilm: [String] = ["Desc f1", "Desc f2", "Desc f3", "Desc f4", "Desc f5", "Desc f6", "Desc f7", "Desc f8", "Desc f9", "Desc f10"]
    var imageFilm: [UIImage] = [ #imageLiteral(resourceName: "filme1"), #imageLiteral(resourceName: "filme2"), #imageLiteral(resourceName: "filme3"), #imageLiteral(resourceName: "filme4"), #imageLiteral(resourceName: "filme5"), #imageLiteral(resourceName: "filme6"), #imageLiteral(resourceName: "filme7"), #imageLiteral(resourceName: "filme8"), #imageLiteral(resourceName: "filme9"), #imageLiteral(resourceName: "filme10")]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Creating variable film of type Film
        var film: Film
        
        //Adding values
        film = Film(title: "007 - Spectre", description: "Description 1...", image: #imageLiteral(resourceName: "filme1"))
        films.append(film)
        
        film = Film(title: "Star Wars", description: "Description 2...", image: #imageLiteral(resourceName: "filme2"))
        films.append(film)
        
        film = Film(title: "Impacto Mortal", description: "Description 3...", image: #imageLiteral(resourceName: "filme3"))
        films.append(film)
        
        film = Film(title: "Deadpool", description: "Description 4...", image: #imageLiteral(resourceName: "filme4"))
        films.append(film)
        
        film = Film(title: "O Regresso", description: "Description 5...", image: #imageLiteral(resourceName: "filme5"))
        films.append(film)
        
        film = Film(title: "A Herdeira", description: "Description 6...", image:#imageLiteral(resourceName: "filme6"))
        films.append(film)
        
        film = Film(title: "Caçadores de emoções", description: "Description 7...", image: #imageLiteral(resourceName: "filme7"))
        films.append(film)
        
        film = Film(title: "O regrasso do mal", description: "Description 8...", image: #imageLiteral(resourceName: "filme8"))
        films.append(film)
        
        film = Film(title: "Tarzan", description: "Description 9...", image: #imageLiteral(resourceName: "filme9"))
        films.append(film)
        
        film = Film(title: "Hardcore", description: "Description 10...", image: #imageLiteral(resourceName: "filme10"))
        films.append(film)
        
        //Adding values
        //for var f:Int in titleFilm {
        //    for d in descriptionFilm {
        //        for i in imageFilm {
        //            films.append( Film(title: titleFilm[f], description: descriptionFilm[f], image: imageFilm[f]) )
        //        }
        //    }
        //}
    }
    
    //Defining number of Sections
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    //Defining number of rows equal to length of films array
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return films.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        //Getting elements of array films
        let film = films[ indexPath.row ]
        
        //Creating a var and attributing the identifier of the TableView
        let cellReuse = "cellReuse"
        
        //Setting prototype cell
        let cell = tableView.dequeueReusableCell(withIdentifier: cellReuse, for: indexPath) as! FilmCell
        
        cell.imageCell.image = film.image
        cell.titleCell.text = film.title
        cell.descriptionCell.text = film.description
        
        /*//Editing image
        cell.imageCell.layer.cornerRadius = 42
        cell.imageCell.clipsToBounds = true */
        
        //Seeting film to prototype cell
        /*.textLabel?.text = film.title
        cell.imageView?.image = film.image*/
        
        //Returning cell
        return cell
        
    }
    
    /*override func prepare(for segue: UIStoryboardSegue, sender: AnyObject?) {
        
    }*/
    
    //Passing data to another ViewController
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "sendFilmDetails" {
            if let indexPath = tableView.indexPathForSelectedRow {
                let selectedFilm = self.films[ indexPath.row ]
                let viewControllerDestination = segue.destination as! DetailsFilmViewController
                viewControllerDestination.film = selectedFilm
            }
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}
