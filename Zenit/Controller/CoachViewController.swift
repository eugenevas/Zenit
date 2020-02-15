//
//  CouchViewController.swift
//  Zenit
//
//  Created by Евгений Васильев on 14.02.2020.
//  Copyright © 2020 Eugene Vasilyev. All rights reserved.
//

import UIKit

class CoachViewController: UITableViewController {

    let coachesArray: [Coach] = {
       
        let sSemak = Coach(nameOfCoach: "Сергей Семак", positionOfCoach: "Главный тренер", countryOfCoach: "Россия🇷🇺", imageOfCoach: "Сергей Семак")
        let aNizelik = Coach(nameOfCoach: "Александр Низелик", positionOfCoach: "Помощник главного тренера", countryOfCoach: "Россия🇷🇺", imageOfCoach: "Александр Низелик")
        let iSimutenkov = Coach(nameOfCoach: "Игорь Симутенков", positionOfCoach: "Помощник главного тренера", countryOfCoach: "Россия🇷🇺", imageOfCoach: "Игорь Симутенков")
        let aTimoshchuk = Coach(nameOfCoach: "Анатолий Тимощук", positionOfCoach: "Помощник главного тренера", countryOfCoach: "Украина🇺🇦", imageOfCoach: "Анатолий Тимощук")
        let deOliveira = Coach(nameOfCoach: "Виллиам де Оливейра", positionOfCoach: "Помощник главного тренера", countryOfCoach: "Бразилия🇧🇷", imageOfCoach: "Виллиам де Оливейра")
        
        return [sSemak, aNizelik, iSimutenkov, aTimoshchuk, deOliveira]
    }()

    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return coachesArray.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let coachCell = tableView.dequeueReusableCell(withIdentifier: "CoachCell", for: indexPath) as! CoachTableViewCell
        
        coachCell.coachName.text = coachesArray[indexPath.row].nameOfCoach
        coachCell.coachPosition.text = coachesArray[indexPath.row].positionOfCoach
        coachCell.coachCountry.text = coachesArray[indexPath.row].countryOfCoach
        coachCell.coachImage.image = UIImage(named: coachesArray[indexPath.row].imageOfCoach)
        coachCell.coachImage.layer.cornerRadius = coachCell.coachImage.frame.size.height / 3
        coachCell.coachImage.clipsToBounds = true
        
        return coachCell
    }
    
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 90
    }
}
