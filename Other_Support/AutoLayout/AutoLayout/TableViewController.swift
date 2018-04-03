//
//  TableViewController.swift
//  AutoLayout
//
//  Created by Bárbara Ferreira on 29/03/2018.
//  Copyright © 2018 Barbara Ferreira. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
    var data: [String] = ["Lasagna", "Pizza", "Pie"]

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //defining number of sections
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    //defining number of rows
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    //mounting cells
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellReuse = "cellReuse"
        let cell = tableView.dequeueReusableCell(withIdentifier: cellReuse, for: indexPath)
        cell.textLabel?.text = data[ indexPath.row ]
        return cell
    }

}
