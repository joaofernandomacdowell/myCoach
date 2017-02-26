//
//  QuestObjectiveViewController.swift
//  myCoach
//
//  Created by Joao on 2/25/17.
//  Copyright © 2017 Mycoach. All rights reserved.
//

import UIKit

class QuestObjectiveViewController: UIViewController {

    @IBOutlet weak var physicalHealthButton: CustomButton!
    @IBOutlet weak var strengtheningButton: CustomButton!
    @IBOutlet weak var weightLossButton: CustomButton!
    @IBOutlet weak var psychologicalHealth: CustomButton!
    
    
    internal func customizeUI() {
        physicalHealthButton.addBorder()
        strengtheningButton.addBorder()
        weightLossButton.addBorder()
        psychologicalHealth.addBorder()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        customizeUI()
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
}
