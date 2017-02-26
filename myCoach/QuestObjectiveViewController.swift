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
    
    var objective: String = ""
    
    @IBAction func onClickPhysicalHealth(_ sender: Any) {
        objective = "physical health"
        physicalHealthButton.setActive()
        strengtheningButton.setInactive()
        weightLossButton.setInactive()
        psychologicalHealth.setInactive()
    }
    
    @IBAction func onClickStrengthening(_ sender: Any) {
        objective = "strangthening"
        strengtheningButton.setActive()
        physicalHealthButton.setInactive()
        weightLossButton.setInactive()
        psychologicalHealth.setInactive()
    }
    
    
    @IBAction func onClickWeightLoss(_ sender: Any) {
        objective = "weight loss"
        weightLossButton.setActive()
        physicalHealthButton.setInactive()
        strengtheningButton.setInactive()
        psychologicalHealth.setInactive()
    }
    
    
    @IBAction func onClickPychologicalHealth(_ sender: Any) {
        objective = "pychological health"
        psychologicalHealth.setActive()
        physicalHealthButton.setInactive()
        strengtheningButton.setInactive()
        weightLossButton.setInactive()
    }
    
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
