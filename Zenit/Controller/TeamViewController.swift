//
//  ListOfPlayersVC.swift
//  Zenit
//
//  Created by Евгений Васильев on 30.11.2019.
//  Copyright © 2019 Eugene Vasilyev. All rights reserved.
//

import UIKit

class TeamViewController: UITableViewController {
    
    let playersArray: [Player] = {
        let aLunev = Player(nameOfPlayer: "Андрей Лунёв", positionOfPlayer: "Вратарь", countryOfPlayer: "Россия🇷🇺", imageOfPlayer: "Андрей Лунёв")
        let aVasyutin = Player(nameOfPlayer: "Александр Васютин", positionOfPlayer: "Вратарь", countryOfPlayer: "Россия🇷🇺", imageOfPlayer: "Александр Васютин")
        let mKerzhakov = Player(nameOfPlayer: "Михаил Кержаков", positionOfPlayer: "Вратарь", countryOfPlayer: "Россия🇷🇺", imageOfPlayer: "Михаил Кержаков")
        let iSmolnikov = Player(nameOfPlayer: "Игорь Смольников", positionOfPlayer: "Защитник", countryOfPlayer: "Россия🇷🇺", imageOfPlayer: "Игорь Смольников")
        let yaRakitskiy = Player(nameOfPlayer: "Ярослав Ракицкий", positionOfPlayer: "Защитник", countryOfPlayer: "Украина🇺🇦", imageOfPlayer: "Ярослав Ракицкий")
        let vKaravaev = Player(nameOfPlayer: "Вячеслав Караваев", positionOfPlayer: "Защитник", countryOfPlayer: "Россия🇷🇺", imageOfPlayer: "Вячеслав Караваев")
        let eMammana = Player(nameOfPlayer: "Эмануэль Маммана", positionOfPlayer: "Защитник", countryOfPlayer: "Аргенитина🇦🇷", imageOfPlayer: "Эмануэль Маммана")
        let bIvanovic = Player(nameOfPlayer: "Бранислав Иванович", positionOfPlayer: "Защитник", countryOfPlayer: "Сербия🇷🇸", imageOfPlayer: "Бранислав Иванович")
        let dSantos = Player(nameOfPlayer: "Дуглас Сантос", positionOfPlayer: "Защитник", countryOfPlayer: "Бразилия🇧🇷", imageOfPlayer: "Дуглас Сантос")
        let yOsorio = Player(nameOfPlayer: "Йордан Осорио", positionOfPlayer: "Защитник", countryOfPlayer: "Венесуэла🇻🇪", imageOfPlayer: "Йордан Осорио")
        let vBarrios = Player(nameOfPlayer: "Вильмар Барриос", positionOfPlayer: "Защитник", countryOfPlayer: "Колумбия 🇨🇴", imageOfPlayer: "Вильмар Барриос")
        let yuZhirkov = Player(nameOfPlayer: "Юрий Жирков", positionOfPlayer: "Полузащитник", countryOfPlayer: "Россия🇷🇺", imageOfPlayer: "Юрий Жирков")
        let mOzdoev = Player(nameOfPlayer: "Магомед Оздоев", positionOfPlayer: "Полузащитник", countryOfPlayer: "Россия🇷🇺", imageOfPlayer: "Магомед Оздоев")
        let lMusaev = Player(nameOfPlayer: "Леон Мусаев", positionOfPlayer: "Полузащитник", countryOfPlayer: "Россия🇷🇺", imageOfPlayer: "Леон Мусаев")
        let aSutormin = Player(nameOfPlayer: "Алексей Сутормин", positionOfPlayer: "Полузащитник", countryOfPlayer: "Россия🇷🇺", imageOfPlayer: "Алексей Сутормин")
        let dKuzyaev = Player(nameOfPlayer: "Далер Кузяев", positionOfPlayer: "Полузащитник", countryOfPlayer: "Россия🇷🇺", imageOfPlayer: "Далер Кузяев")
        let aErokhin = Player(nameOfPlayer: "Александр Ерохин", positionOfPlayer: "Полузащитник", countryOfPlayer: "Россия🇷🇺", imageOfPlayer: "Александр Ерохин")
        let oShatov = Player(nameOfPlayer: "Олег Шатов", positionOfPlayer: "Полузащитник", countryOfPlayer: "Россия🇷🇺", imageOfPlayer: "Олег Шатов")
        let eRigoni = Player(nameOfPlayer: "Эмилиано Ригони", positionOfPlayer: "Полузащитник", countryOfPlayer: "Аргенитина 🇦🇷", imageOfPlayer: "Эмилиано Ригони")
        let malcom = Player(nameOfPlayer: "Малком", positionOfPlayer: "Нападающий", countryOfPlayer: "Бразилия🇧🇷", imageOfPlayer: "Малком")
        let sDriussi = Player(nameOfPlayer: "Себастьян Дриусси", positionOfPlayer: "Нападающий", countryOfPlayer: "Аргенитина🇦🇷", imageOfPlayer: "Себастьян Дриусси")
        let sAzmoun = Player(nameOfPlayer: "Сердар Азмун", positionOfPlayer: "Нападающий", countryOfPlayer: "Иран🇮🇷", imageOfPlayer: "Сердар Азмун")
        let aDzyuba = Player(nameOfPlayer: "Артём Дзюба", positionOfPlayer: "Нападающий", countryOfPlayer: "Россия🇷🇺", imageOfPlayer: "Артём Дзюба")
        
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
        let playerCell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! CustomTableViewCell
        
        // присвоили лэйблу ячейки конкретный элемент массива, который берём по индексу текущей строки
        playerCell.playerName.text = playersArray[indexPath.row].nameOfPlayer
        playerCell.playerPosition.text = playersArray[indexPath.row].positionOfPlayer
        playerCell.playerCountry.text = playersArray[indexPath.row].countryOfPlayer
        playerCell.playerImage.image = UIImage(named: playersArray[indexPath.row].imageOfPlayer)
        playerCell.playerImage.layer.cornerRadius = playerCell.playerImage.frame.size.height / 3
        playerCell.playerImage.clipsToBounds = true
        
        // возвращаем playerCell, т.к. playerСell - объект класса UITableViewCell
        return playerCell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 90
    }
    
    // MARK: - Navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ShowPlayerDetail" {
           
            if let playerIndexPath = self.tableView.indexPathForSelectedRow {
                let playerBioViewController = segue.destination as! PlayerBioViewController
                
                playerBioViewController.namePlayer = playersArray[playerIndexPath.row].nameOfPlayer
            }
        }
    }
}
