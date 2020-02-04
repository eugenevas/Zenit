//
//  MatchesViewController.swift
//  Zenit
//
//  Created by Евгений Васильев on 04.02.2020.
//  Copyright © 2020 Eugene Vasilyev. All rights reserved.
//

import UIKit
import WebKit

class MatchesViewController: UIViewController {

    @IBOutlet weak var mathesWebView: WKWebView!
    @IBOutlet weak var matchesActivityIndicator: UIActivityIndicatorView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        matchesActivityIndicator.isHidden = true
        matchesActivityIndicator.hidesWhenStopped = true
        
        let urlMatches = URL(string: "https://fc-zenit.ru/zenit/calendar/")
        let urlRequestMatches = URLRequest(url: urlMatches!)
        
        mathesWebView.load(urlRequestMatches)
}

}
