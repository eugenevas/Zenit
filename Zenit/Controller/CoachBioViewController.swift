//
//  CoachBioViewController.swift
//  Zenit
//
//  Created by Евгений Васильев on 16.02.2020.
//  Copyright © 2020 Eugene Vasilyev. All rights reserved.
//

import UIKit

class CoachBioViewController: UIViewController {

    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var bio: UITextView!
    
    
    var nameCoach = "Just a name"
    
    override func viewDidLoad() {
        super.viewDidLoad()

        image.image = UIImage(named: nameCoach)
        name.text = nameCoach
        bio.text = "Here will be text"
        
    }
}
