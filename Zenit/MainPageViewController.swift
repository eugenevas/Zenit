//
//  MainPageViewController.swift
//  Zenit
//
//  Created by Евгений Васильев on 04.02.2020.
//  Copyright © 2020 Eugene Vasilyev. All rights reserved.
//

import UIKit
import WebKit

class MainPageViewController: UIViewController {
    
    
    @IBOutlet weak var mainPageWebView: WKWebView!
    @IBOutlet weak var mainPageActivityIndicator: UIActivityIndicatorView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mainPageActivityIndicator.isHidden = true
        mainPageActivityIndicator.hidesWhenStopped = true
       
        let urlMainPage = URL(string: "https://fc-zenit.ru")
        let urlRequestMainPage = URLRequest(url: urlMainPage!)
        
        mainPageWebView.load(urlRequestMainPage)
    }
    
}
