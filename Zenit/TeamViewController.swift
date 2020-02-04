//
//  ListOfPlayersVC.swift
//  Zenit
//
//  Created by Евгений Васильев on 30.11.2019.
//  Copyright © 2019 Eugene Vasilyev. All rights reserved.
//

import UIKit

class TeamViewController: UITableViewController {

    let players = Player.getPlayers()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
      //  self.tableView.contentInset = UIEdgeInsets(top: 100, left: 0, bottom: 0, right: 0)
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return players.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // приведение объекта cell к классу ячейки CustomTableViewCell
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! CustomTableViewCell

        // присвоили лэйблу ячейки конкретный элемент массива, который берём по индексу текущей строки
        cell.nameLabel.text = players[indexPath.row].name
        cell.positionLabel.text = players[indexPath.row].position
        cell.countryLabel.text = players[indexPath.row].country
        cell.imageOfPlayer.image = UIImage(named: players[indexPath.row].image)
        cell.imageOfPlayer.layer.cornerRadius = cell.imageOfPlayer.frame.size.height / 3
        cell.imageOfPlayer.clipsToBounds = true

        // возвращаем cell, т.к. cell - объект класса UITableViewCell
        return cell
    }

    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 90
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ShowDetail" {
            if let indexPath = self.tableView.indexPathForSelectedRow {                // assigning index to selected row "indexPathForSelectedRow"
                let playersBioViewController = segue.destination as! PlayerBioViewController  // create of class intance "playersBioViewController"
                playersBioViewController.nameOfPlayer = players[indexPath.row].name     // access to property "nameOfPlayer" of "playersBioViewController" class
            }
        }
    }
}
