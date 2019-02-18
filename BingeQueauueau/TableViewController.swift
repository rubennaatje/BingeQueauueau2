//
//  TableViewController.swift
//  BingeQueauueau
//
//  Created by Ruben Soerdien on 11/02/2019.
//  Copyright © 2019 Ruben Soerdien. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {

    private var content = [
        Series(title: "Rick and Morty",
               description: "An animated series that follows the exploits of a super scientist and his not so bright grandson",
               seasons: 2,
               image: UIImage(named: "rickandmorty")),
        
        Series(title: "Archer",
               description: "Covert black ops and espionage take a back seat to zany personalities and relationships between secret agents and drones.",
               seasons: 7,
               image: UIImage(named: "archer")),
        
        
        Series(title: "House of Cards",
               description: "A Congressman works with his equally conniving wife to exact revenge on the people who betrayed him.",
               seasons: 4,
               image: UIImage(named: "houseofcards")),
        
        Series(title: "Breaking Bad",
               description: "A high school chemistry teacher diagnosed with inoperable lung cancer turns to manufacturing and selling methamphetamine in order to secure his family's future.",
               seasons: 5,
               image: UIImage(named: "breakingbad"))
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return content.count;
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SerieCell", for: indexPath)

        cell.textLabel?.text = content[indexPath.row].title

        return cell
    }
 

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let detailController = segue.destination as? DetailViewController {
            detailController.series = content[self.tableView.indexPathForSelectedRow!.row]
        }
    }
    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
