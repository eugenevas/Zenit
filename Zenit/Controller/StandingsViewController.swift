//
//  StandingsViewController.swift
//  Zenit
//
//  Created by Евгений Васильев on 04.02.2020.
//  Copyright © 2020 Eugene Vasilyev. All rights reserved.
//

import UIKit
import WebKit

class StandingsViewController: UIViewController {

    @IBOutlet weak var standingsWebView: WKWebView!
    @IBOutlet weak var standingsActivityIndicator: UIActivityIndicatorView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        standingsActivityIndicator.isHidden = true
        standingsActivityIndicator.hidesWhenStopped = true
        
        let urlStandings = URL(string: "https://fc-zenit.ru/zenit/tables/")
        let urlRequestStandings = URLRequest(url: urlStandings!)
        
        standingsWebView.load(urlRequestStandings)
    }
    
}
