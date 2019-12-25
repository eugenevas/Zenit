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
                                 "Сердар Азмун", "Артём Дзюба"]
    
    static let positions = ["Вратарь", "Полузащитник", "Нападающий"]
    
    static let countries = [ "Россия 🇷🇺", "Аргенитина 🇦🇷", "Бразилия 🇧🇷", "Венесуэла",
                             "Иран 🇮🇷", "Колумбия 🇨🇴", "Сербия 🇷🇸", "Словакия 🇸🇰", "Украина 🇺🇦"]
    
    let aLunev = "Андрей Евгеньевич Лунев родился в Москве. Воспитанник «Торпедо», за основную команду дебютировал в 2010 году. Затем выступал за подмосковную «Истру», «Калугу» и раменский «Сатурн». В июле 2015 года перешел в «Уфу»."
    let aVasyutin = "Родился 4 марта 1995 года в Санкт-Петербурге"
    let mKerzhakov = "Михаил Анатольевич Кержаков родился в Кингисеппе и до того, как прийти в футбол, занимался единоборствами. Воспитанник сине-бело-голубых, в 2004-м присоединился к дублю «Зенита» и неоднократно привлекался к работе с основой."
    let iSmolnikov = "Игорь Александрович Смольников родился 8 августа 1988 года в городе Каменск-Уральский. Воспитанник школы московского «Локомотива»."
    let yaRakitskiy = "Родился 3 августа 1989 года в Першотравенске. В системе донецкого «Шахтёра» находился с 13 лет. Прошёл путь до игрока основного состава команды. Вместе с «Шахтёром» становился семикратным чемпионом Украины, шестикратным обладателем Кубка и Суперкубка Украины, провёл за клуб 326 матчей и забил 14 мячей."
    let vKaravaev = "Вячеслав Сергеевич Караваев родился 20 мая 1995-го в Москве. Воспитанник ЦСКА, провел за основной состав армейцев два матча. Сезон-2014/15 отыграл на правах аренды в чешской «Дукле», следующую кампанию — в «Яблонце». В 2016-м перешел в пражскую «Спарту», где отыграл 44 матча, забил 4 мяча и отдал 10 результативных передач, а также был признан лучшим игроком сезона."
    let eMammana = "Эмануэль Маммана родился 10 февраля 1996 года в Мерло. Воспитанник «Ривер Плейта», дебютировал на профессиональном уровне за родную команду в ноябре 2014-го. За два сезона провел 34 матча и забил 2 мяча, став чемпионом Аргентины, обладателем Южноамериканского кубка, Кубка Либертадорес, Суперкубка Южной Америки и Кубка банка Суруга."
    let bIvanovic = "Бранислав Иванович родился 22 февраля 1984 года в Сремска-Митровице. В июле 2002 начал выступать за «Срем», в 2003-м присоединился к «ОФК»."
    let dSantos = "Дуглас дос Сантос Жустино де Мело родился 22 марта 1994 года в бразильском Жуан-Песоа, штат Параиба. Воспитанник клуба «Наутико», Дуглас Сантос дебютировал в составе родной команды 15 февраля 2012-го. Летом 2013-го перешел в испанскую «Гранаду», сразу же был отдан в аренду «Удинезе», а спустя год подписал с итальянской командой полноценный контракт."
    let yOsorio = "Йордан Эрнандо Осорио Паредес родился 10 мая 1994 года в Баринасе. Воспитанник «Саморы», дебютировал в составе родной команды в апреле 2014-го. В общей сложности провел за клуб из Венесуэлы 103 матча, забил пять мячей, а также трижды выиграл чемпионат страны."
    let vBarrios = "Вильмар Энрике Барриос Теран родился 16 октября 1993 года в Картахене, Колумбия. Воспитанник клуба «Депортес Толима» дебютировал в основном составе 24 февраля 2013 года, а полтора года спустя вместе с «винно-золотыми» завоевал Кубок Колумбии. В общей сложности за клуб из Ибаге полузащитник провел 106 матчей, в которых забил 3 мяча."
    let Malcom = "Свою футбольную карьеру Малком начал в своем родном городе Сан-Паулу, в команде «Коринтиансе», попав в молодёжную школу в 11-летнем возрасте. Спустя шесть лет попал в основную команду «Коринтианс», куда его пригласил известный бразильский специалист Мано Менезес."
    let yuZhirkov = "Юрий Жирков родился в Тамбове и начал карьеру в составе местного «Спартака». В 2004-м перешел в ЦСКА, в 2009-м — в «Челси». После возвращения из Англии выступал за «Анжи» и «Динамо»."
    let mOzdoev = "Магомед Мустафаевич Оздоев родился 5 ноября 1992 года в Грозном, но почти все детство провел в Ингушетии. В футболе Магомед оказался благодаря отцу, бывшему игроку «Терека». После нескольких лет занятий в обычной спортшколе будущий полузащитник «Зенита» перешел в «Ангушт», а через год — в «Терек»."
    let lMusaev = "Леон Мусаев родился в Санкт-Петербурге 25 января 1999 года. Начал заниматься футболом с шести лет в школе «Смена», первый тренер Иван Шабаров. В августе 2016 дебютировал в составе молодежной команды, сыграл 23 матча, забил 4 мяча. В первенстве ФНЛ за «Зенит-2» дебютировал 11 июля 2016 года в матче 1-го тура против «Сокола» (1:1). В 2019 году был взят Сергеем Семаком в основную команду, и 21 февраля в матче 1/16 финала Лиги Европы дебютировал в основном составе в матче против «Фенербахче» (3:1), выйдя на замену на 87-й минуте вместо Артёма Дзюбы[3], в чемпионате России дебютировал 14 апреля 2019 года в домашнем матче 23-го тура против «Анжи» (5:0), выйдя на замену на 85-й минуте вместо Дзюбы. Выступал за юношеские сборные России."
    let aSutormin = "Алексей Сергеевич Сутормин родился 10 января 1994 года в Москве. В 2010 году присоединился к «Газпром»-Академии сине-бело-голубых, а в апреле 2012-го дебютировал в молодежном составе клуба. На профессиональном уровне выступал за «Строгино», «Волгарь», «Оренбург» и «Рубин». В сезоне-2018/19 Сутормин отыграл 29 матчей в Российской Премьер-лиге, забил 8 мячей и сделал две результативные передачи."
    let dKuzyaev = "Далер Адьямович Кузяев родился 15 января 1993 года в Набережных Челнах. Начал заниматься футболом в Оренбурге."
    let aErokhin = "Александр Ерохин родился 13 октября 1989 года в Барнауле. Воспитанник местного футбола, полузащитник тренировался в школе московского «Локомотива», а первый профессиональный контракт подписал с «Шерифом». Вместе с командой из Тирасполя Ерохин стал двукратным чемпионом страны, двукратным обладателем Кубка Молдавии и победителем Кубка чемпионов Содружества."
    let oShatov = "Олег Шатов родился 29 июля 1990 года в Нижнем Тагиле и начал карьеру в мини-футбольном клубе «ВИЗ-Синара». В 2007-м присоединился к екатеринбургскому «Уралу», в составе которого провел более 100 игр и был признан лучшим игроком команды по итогам 2010 года."
    let rMak = "Роберт Мак родился в Братиславе и начал заниматься футболом в школе местного «Слована». В 13-летнем возрасте перешел в академию «Манчестер Сити», где дошел до дублирующего состава. В 2010-м присоединился к «Нюрнбергу», в 2014-м — к греческому ПАОКу."
    let mKranevitter = "Матиас Краневиттер родился 21 мая 1993 года в Сан-Мигель-де-Тукуман. Воспитанник «Ривер Плейта», Краневиттер дебютировал за основную команду в декабре 2012-го и в общей сложности провел 95 матчей."
    let sDriussi = "Себастьян Дриусси родился 9 февраля 1996 года в Буэнос-Айресе. Воспитанник «Ривер Плейта», дебютировал в основной команде в конце 2013-го, провел 92 матча, забил 25 мячей и отдал 8 результативных передач. Выигрывал чемпионат Аргентины, Южноамериканский кубок, Кубки Либертадорес, Аргентины, банка Суруга и Суперкубок Южной Америки. Предыдущий клуб: «Ривер Плейт»"
    let sAzmoun = "Сердар Азмун родился 1 января 1995 года в иранском городе Гомбеде-Кавус. В 15 лет Азмун стал игроком исфаханского «Сепахана», выступающего в Иранской Про-лиге, высшем дивизионе страны."
    let aDzyuba = "Артем Сергеевич Дзюба родился в Москве. Воспитанник академии «Спартака», в 2006-м году дебютировал в основном составе команды. С 2009-го на правах аренды выступал за «Томь» и «Ростов», в «Зените» — с 1 июля 2015-го."
    
    
    
    static func getPlayers() -> [Player] {
        
        var players = [Player]()
        
        for player in listOfPlayers {
            players.append(Player(name: player, position: "Вратарь", country: "Россия 🇷🇺", image: player))
        }
        
        
        
        
        return players
    }
}


