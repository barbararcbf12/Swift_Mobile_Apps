//
//  ViewController.swift
//  ZodiacSigns_Swift
//
//  Created by Bárbara Ferreira on 29/03/2018.
//  Copyright © 2018 Barbara Ferreira. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
    
    var signs: [String] = []
    var characteristicsSigns: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //loading signs
        signs.append("Aries")
        signs.append("Taurus")
        signs.append("Gemini")
        signs.append("Cancer")
        signs.append("Leo")
        signs.append("Virgo")
        signs.append("Libra")
        signs.append("Scorpio")
        signs.append("Sagittarius")
        signs.append("Capricorn")
        signs.append("Aquarius")
        signs.append("Pisces")
        
        //loading characteristics of signs to characteristicsSigns
        characteristicsSigns.append("Courageous, energetic, willful, commanding, leading. Often leads when following would be best course of action.")
        characteristicsSigns.append("Pleasure seeking, loves control, dependable, grounded, provokes slowly, and highly sensual in nature.")
        characteristicsSigns.append("Cerebral, chatty, loves learning and education, charming, and adventurous.")
        characteristicsSigns.append("Emotional, group oriented, seeks security, family.")
        characteristicsSigns.append("Generous, organized, protective, beautiful.")
        characteristicsSigns.append("Particular, logical, practical, sense of duty, critical.")
        characteristicsSigns.append("Balanced, seeks beauty, sense of justice.")
        characteristicsSigns.append("Passionate, exacting, loves extremes, combative, reflective.")
        characteristicsSigns.append("Happy, absent minded, creative, adventurous.")
        characteristicsSigns.append("Timeless, driven, calculating, ambitious.")
        characteristicsSigns.append("Forward thinking, communicative, people oriented, stubborn, generous, and dedicated.")
        characteristicsSigns.append("Likeable, energetic, passionate, sensitive.")
    }
    
    //Setting number of sections
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    //Setting number of rows for TableView
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //setting number of rows equal to "signs" array length
        return signs.count
    }
    
    //Setting visualisation
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        //setting variable equal to name of identifier of TableViewCell
        let cellReuse = "cellReuse"
        
        //creating cell prototype
        let cell = tableView.dequeueReusableCell(withIdentifier: cellReuse, for: indexPath)
        
        //setting cell to rows
        cell.textLabel?.text = signs[ indexPath.row ]
        
        //returning cell
        return cell
    
    }
    
    //Setting click events
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        //removing selection after click
        tableView.deselectRow(at: indexPath, animated: true)
        
        //creating an alert
        let alertController = UIAlertController(title: "Sign characteristics", message: characteristicsSigns[ indexPath.row ], preferredStyle: .alert)
        
        //creating an action
        let actionConfirm = UIAlertAction(title: "ok", style: .default, handler: nil)
        
        //adding action to alert
        alertController.addAction(actionConfirm)
        
        //passing alert
        present(alertController, animated: true, completion: nil)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

