//
//  PlayerBioViewController.swift
//  Zenit
//
//  Created by Евгений Васильев on 08.12.2019.
//  Copyright © 2019 Eugene Vasilyev. All rights reserved.
//

import UIKit

class PlayerBioViewController: UIViewController {
    
    @IBOutlet weak var imagePlayer: UIImageView!
    @IBOutlet weak var namePlayerLabel: UILabel!
    @IBOutlet weak var bioPlayer: UITextView!
    
    
    var namePlayer = "Player name"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imagePlayer.image = UIImage(named: namePlayer)
        namePlayerLabel.text = namePlayer
        bioPlayer.text = "Here will be a correct text soon"
    }
    
}

