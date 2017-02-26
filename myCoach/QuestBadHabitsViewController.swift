//
//  QuestBadHabitsViewController.swift
//  myCoach
//
//  Created by Joao on 2/25/17.
//  Copyright © 2017 Mycoach. All rights reserved.
//

import UIKit

class QuestBadHabitsViewController: UIViewController {

    @IBOutlet weak var smokerButton: CustomButton!
    @IBOutlet weak var fastFoodButton: CustomButton!
    @IBOutlet weak var lazyButton: CustomButton!
    @IBOutlet weak var skipMealsButton: CustomButton!
    
    internal func customizeUI() {
        smokerButton.addBorder()
        fastFoodButton.addBorder()
        lazyButton.addBorder()
        skipMealsButton.addBorder()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        customizeUI()
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
}
