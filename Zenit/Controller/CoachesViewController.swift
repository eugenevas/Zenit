//
//  MatchesViewController.swift
//  Zenit
//
//  Created by Евгений Васильев on 04.02.2020.
//  Copyright © 2020 Eugene Vasilyev. All rights reserved.
//

import UIKit

class CoachesViewController: UITableViewController {

    // Здесь будет отображаться список тренеров команды
    var coachesArray: [Coach] = {
        var sSemak = Coach(nameOfCoach: "Сергей Семак", positionOfCoach: "Главный тренер", countryOfCoach: "Россия", image: "Сергей Семак")
        var aTimoshchuk = Coach(nameOfCoach: "Анатолий Тимощук", positionOfCoach: "Помощник главного тренера", countryOfCoach: "Украина", image: "Анатолий Тимощук")
        
        
        return [sSemak, aTimoshchuk]
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return coachesArray.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let coachCell = tableView.dequeueReusableCell(withIdentifier: "coachCell", for: indexPath) as! CoachCustomTableViewCell
        
        // здесь будет присваиваться имя и картинка каждому тренеру
        
        
        return coachCell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 90
    }
    
    
}

