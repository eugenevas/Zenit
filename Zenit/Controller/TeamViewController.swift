//
//  ListOfPlayersVC.swift
//  Zenit
//
//  Created by Евгений Васильев on 30.11.2019.
//  Copyright © 2019 Eugene Vasilyev. All rights reserved.
//

import UIKit

class TeamViewController: UITableViewController {
    
    // let players = Player.getPlayers()
    
    var playersArray: [Player] = {
        var aLunev = Player(name: "Андрей Лунёв", position: "Вратарь", country: "Россия🇷🇺", image: "Андрей Лунёв")
        var aVasyutin = Player(name: "Александр Васютин", position: "Вратарь", country: "Россия🇷🇺", image: "Александр Васютин")
        var mKerzhakov = Player(name: "Михаил Кержаков", position: "Вратарь", country: "Россия🇷🇺", image: "Михаил Кержаков")
        var iSmolnikov = Player(name: "Игорь Смольников", position: "Защитник", country: "Россия🇷🇺", image: "Игорь Смольников")
        var yaRakitskiy = Player(name: "Ярослав Ракицкий", position: "Защитник", country: "Украина 🇺🇦", image: "Ярослав Ракицкий")
        var vKaravaev = Player(name: "Вячеслав Караваев", position: "Защитник", country: "Россия🇷🇺", image: "Вячеслав Караваев")
        var eMammana = Player(name: "Эмануэль Маммана", position: "Защитник", country: "Аргенитина 🇦🇷", image: "Эмануэль Маммана")
        var bIvanovic = Player(name: "Бранислав Иванович", position: "Защитник", country: "Сербия 🇷🇸", image: "Бранислав Иванович")
        var dSantos = Player(name: "Дуглас Сантос", position: "Защитник", country: "Бразилия 🇧🇷", image: "Дуглас Сантос")
        var yOsorio = Player(name: "Йордан Осорио", position: "Защитник", country: "Венесуэла🇻🇪", image: "Йордан Осорио")
        var vBarrios = Player(name: "Вильмар Барриос", position: "Защитник", country: "Колумбия 🇨🇴", image: "Вильмар Барриос")
        var yuZhirkov = Player(name: "Юрий Жирков", position: "Полузащитник", country: "Россия🇷🇺", image: "Юрий Жирков")
        var mOzdoev = Player(name: "Магомед Оздоев", position: "Полузащитник", country: "Россия🇷🇺", image: "Магомед Оздоев")
        var lMusaev = Player(name: "Леон Мусаев", position: "Полузащитник", country: "Россия🇷🇺", image: "Леон Мусаев")
        var aSutormin = Player(name: "Алексей Сутормин", position: "Полузащитник", country: "Россия🇷🇺", image: "Алексей Сутормин")
        var dKuzyaev = Player(name: "Далер Кузяев", position: "Полузащитник", country: "Россия🇷🇺", image: "Далер Кузяев")
        var aErokhin = Player(name: "Александр Ерохин", position: "Полузащитник", country: "Россия🇷🇺", image: "Александр Ерохин")
        var oShatov = Player(name: "Олег Шатов", position: "Полузащитник", country: "Россия🇷🇺", image: "Олег Шатов")
        var eRigoni = Player(name: "Эмилиано Ригони", position: "Полузащитник", country: "Аргенитина 🇦🇷", image: "Эмилиано Ригони")
        var malcom = Player(name: "Малком", position: "Нападающий", country: "Бразилия 🇧🇷", image: "Малком")
        var sDriussi = Player(name: "Себастьян Дриусси", position: "Нападающий", country: "Аргенитина 🇦🇷", image: "Себастьян Дриусси")
        var sAzmoun = Player(name: "Сердар Азмун", position: "Нападающий", country: "Иран 🇮🇷", image: "Сердар Азмун")
        var aDzyuba = Player(name: "Артём Дзюба", position: "Нападающий", country: "Россия🇷🇺", image: "Артём Дзюба")
        
        return [aLunev, aVasyutin, mKerzhakov, iSmolnikov, yaRakitskiy, vKaravaev, eMammana, bIvanovic, dSantos, yOsorio, vBarrios, yuZhirkov, mOzdoev, lMusaev, aSutormin, dKuzyaev, aErokhin, oShatov, eRigoni, malcom, sDriussi, sAzmoun, aDzyuba]
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return playersArray.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // приведение объекта cell к классу ячейки CustomTableViewCell
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! CustomTableViewCell
        
        // присвоили лэйблу ячейки конкретный элемент массива, который берём по индексу текущей строки
        cell.nameLabel.text = playersArray[indexPath.row].name
        cell.positionLabel.text = playersArray[indexPath.row].position
        cell.countryLabel.text = playersArray[indexPath.row].country
        cell.imageOfPlayer.image = UIImage(named: playersArray[indexPath.row].image)
        cell.imageOfPlayer.layer.cornerRadius = cell.imageOfPlayer.frame.size.height / 3
        cell.imageOfPlayer.clipsToBounds = true
        
        // возвращаем cell, т.к. cell - объект класса UITableViewCell
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 90
    }
    
    
    // MARK: - Navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ShowDetail" {
            if let indexPath = self.tableView.indexPathForSelectedRow {                // assigning index to selected row "indexPathForSelectedRow"
                let playersBioViewController = segue.destination as! PlayerBioViewController  // create of class intance "playersBioViewController"
                playersBioViewController.nameOfPlayer = playersArray[indexPath.row].name     // access to property "nameOfPlayer" of "playersBioViewController" class
            }
        }
    }
}
