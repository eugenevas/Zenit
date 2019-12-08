//
//  PlayerBioViewController.swift
//  Zenit
//
//  Created by Евгений Васильев on 08.12.2019.
//  Copyright © 2019 Eugene Vasilyev. All rights reserved.
//

import UIKit

class PlayerBioViewController: UIViewController {
    
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var bio: UITextView!
    
    
    var nameOfPlayer = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        image.image = UIImage(named: nameOfPlayer)
        name.text = nameOfPlayer
        bio.text = "Here will be a correct text soon"
    }
    

    
    
}
