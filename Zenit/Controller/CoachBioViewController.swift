//
//  CoachBioViewController.swift
//  Zenit
//
//  Created by Евгений Васильев on 16.02.2020.
//  Copyright © 2020 Eugene Vasilyev. All rights reserved.
//

import UIKit

class CoachBioViewController: UIViewController {

    @IBOutlet weak var imageCoach: UIImageView!
    @IBOutlet weak var nameCoachLabel: UILabel!
    @IBOutlet weak var bioCoach: UITextView!
    
    
    var nameCoach = "Just a name"
    
    override func viewDidLoad() {
        super.viewDidLoad()

        imageCoach.image = UIImage(named: nameCoach)
        nameCoachLabel.text = nameCoach
        bioCoach.text = "Here will be text"
        
    }
}
