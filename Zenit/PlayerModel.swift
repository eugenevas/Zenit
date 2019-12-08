//
//  PlayerModel.swift
//  Zenit
//
//  Created by Евгений Васильев on 08.12.2019.
//  Copyright © 2019 Eugene Vasilyev. All rights reserved.
//

import Foundation

struct Player {
    
    var name: String
    var position: String
    var country: String
    var image: String
    
    static let listOfPlayers = [ "Андрей Лунёв", "Александр Васютин", "Михаил Кержаков",
                                 "Игорь Смольников", "Ярослав Ракицкий", "Вячеслав Караваев",
                                 "Эмануэль Маммана", "Бранислав Иванович", "Дуглас Сантос", "Йордан Осорио",
                                 "Вильмар Барриос", "Малком", "Юрий Жирков", "Магомед Оздоев",
                                 "Леон Мусаев", "Алексей Сутормин", "Далер Кузяев", "Александр Ерохин",
                                 "Олег Шатов", "Роберт Мак", "Матиас Кранневитер", "Себастьян Дриусси",
                                 "Сердар Азмун", "Артём Дзюба"
           ]
    
    static func getPlayers() -> [Player] {
        
        var players = [Player]()
        
        for player in listOfPlayers {
            
            players.append(Player(name: player , position: "Вратарь", country: "Россия 🇷🇺", image: player))
        }
        
        return players
    }
}


