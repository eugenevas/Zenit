//
//  ListOfPlayersVC.swift
//  Zenit
//
//  Created by Евгений Васильев on 30.11.2019.
//  Copyright © 2019 Eugene Vasilyev. All rights reserved.
//

import UIKit

class ListOfPlayersVC: UITableViewController {

    
    let listOfPlayers = [ "Андрей Лунёв", "Александр Васютин", "Михаил Кержаков",
                          "Игорь Смольников", "Ярослав Ракицкий", "Вячеслав Караваев",
                          "Эмануэль Маммана", "Бранислав Иванович", "Дуглас Сантос", "Йордан Осорио",
                          "Вильмар Барриос", "Малком", "Юрий Жирков", "Магомед Оздоев",
                          "Леон Мусаев", "Алексей Сутормин", "Далер Кузяев", "Александр Ерохин",
                          "Олег Шатов", "Роберт Мак", "Матиас Кранневитер", "Себастьян Дриусси",
                          "Сердар Азмун", "Артём Дзюба"
    ]
    override func viewDidLoad() {
        super.viewDidLoad()

    
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listOfPlayers.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // приведение объекта cell к классу ячейки CustomTableViewCell
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! CustomTableViewCell

        // присвоили лэйблу ячейки конкретный элемент массива, который берём по индексу текущей строки
        cell.nameLabel.text = listOfPlayers[indexPath.row]
        cell.imageOfPlayer.image = UIImage(named: listOfPlayers[indexPath.row])
        cell.imageOfPlayer.layer.cornerRadius = cell.imageOfPlayer.frame.size.height / 3
        cell.imageOfPlayer.clipsToBounds = true

        // возвращаем cell, т.к. cell - объект класса UITableViewCell
        return cell
    }

    // MARK: - Table View Delegate
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
         return 85
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
