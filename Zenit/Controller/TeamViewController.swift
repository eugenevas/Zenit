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
    
    let playersArray: [Player] = {
        let aLunev = Player(nameOfPlayer: "Андрей Лунёв", position: "Вратарь", country: "Россия🇷🇺", image: "Андрей Лунёв")
        let aVasyutin = Player(nameOfPlayer: "Александр Васютин", position: "Вратарь", country: "Россия🇷🇺", image: "Александр Васютин")
        let mKerzhakov = Player(nameOfPlayer: "Михаил Кержаков", position: "Вратарь", country: "Россия🇷🇺", image: "Михаил Кержаков")
        let iSmolnikov = Player(nameOfPlayer: "Игорь Смольников", position: "Защитник", country: "Россия🇷🇺", image: "Игорь Смольников")
        let yaRakitskiy = Player(nameOfPlayer: "Ярослав Ракицкий", position: "Защитник", country: "Украина🇺🇦", image: "Ярослав Ракицкий")
        let vKaravaev = Player(nameOfPlayer: "Вячеслав Караваев", position: "Защитник", country: "Россия🇷🇺", image: "Вячеслав Караваев")
        let eMammana = Player(nameOfPlayer: "Эмануэль Маммана", position: "Защитник", country: "Аргенитина🇦🇷", image: "Эмануэль Маммана")
        let bIvanovic = Player(nameOfPlayer: "Бранислав Иванович", position: "Защитник", country: "Сербия🇷🇸", image: "Бранислав Иванович")
        let dSantos = Player(nameOfPlayer: "Дуглас Сантос", position: "Защитник", country: "Бразилия🇧🇷", image: "Дуглас Сантос")
        let yOsorio = Player(nameOfPlayer: "Йордан Осорио", position: "Защитник", country: "Венесуэла🇻🇪", image: "Йордан Осорио")
        let vBarrios = Player(nameOfPlayer: "Вильмар Барриос", position: "Защитник", country: "Колумбия 🇨🇴", image: "Вильмар Барриос")
        let yuZhirkov = Player(nameOfPlayer: "Юрий Жирков", position: "Полузащитник", country: "Россия🇷🇺", image: "Юрий Жирков")
        let mOzdoev = Player(nameOfPlayer: "Магомед Оздоев", position: "Полузащитник", country: "Россия🇷🇺", image: "Магомед Оздоев")
        let lMusaev = Player(nameOfPlayer: "Леон Мусаев", position: "Полузащитник", country: "Россия🇷🇺", image: "Леон Мусаев")
        let aSutormin = Player(nameOfPlayer: "Алексей Сутормин", position: "Полузащитник", country: "Россия🇷🇺", image: "Алексей Сутормин")
        let dKuzyaev = Player(nameOfPlayer: "Далер Кузяев", position: "Полузащитник", country: "Россия🇷🇺", image: "Далер Кузяев")
        let aErokhin = Player(nameOfPlayer: "Александр Ерохин", position: "Полузащитник", country: "Россия🇷🇺", image: "Александр Ерохин")
        let oShatov = Player(nameOfPlayer: "Олег Шатов", position: "Полузащитник", country: "Россия🇷🇺", image: "Олег Шатов")
        let eRigoni = Player(nameOfPlayer: "Эмилиано Ригони", position: "Полузащитник", country: "Аргенитина 🇦🇷", image: "Эмилиано Ригони")
        let malcom = Player(nameOfPlayer: "Малком", position: "Нападающий", country: "Бразилия🇧🇷", image: "Малком")
        let sDriussi = Player(nameOfPlayer: "Себастьян Дриусси", position: "Нападающий", country: "Аргенитина🇦🇷", image: "Себастьян Дриусси")
        let sAzmoun = Player(nameOfPlayer: "Сердар Азмун", position: "Нападающий", country: "Иран🇮🇷", image: "Сердар Азмун")
        let aDzyuba = Player(nameOfPlayer: "Артём Дзюба", position: "Нападающий", country: "Россия🇷🇺", image: "Артём Дзюба")
        
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
        cell.nameLabel.text = playersArray[indexPath.row].nameOfPlayer
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
            // assigning index to selected row "indexPathForSelectedRow"
            if let playerIndexPath = self.tableView.indexPathForSelectedRow {
                // create instance of class instance "playersBioViewController"
                let playerBioViewController = segue.destination as! PlayerBioViewController
                
                // access to property "namePlayer" of "playersBioViewController" class
                playerBioViewController.namePlayer = playersArray[playerIndexPath.row].nameOfPlayer
            }
        }
    }
}
