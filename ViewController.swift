//
//  ViewController.swift
//  BingeQueauueau
//
//  Created by Ruben Soerdien on 11/02/2019.
//  Copyright © 2019 Ruben Soerdien. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {

    var series = ["Rick and Morty", "Archer", "House of Cars", "Breaking bad"]
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return series.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SerieCell", for: indexPath)
        
        cell.textLabel?.text = series[indexPath.row]
        
        return cell
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
