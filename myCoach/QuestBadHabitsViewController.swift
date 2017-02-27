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
    
    var badHabits: Array<String> = []
    
    @IBAction func onClickSmoker(_ sender: Any) {
        badHabits.append("smoker")
        smokerButton.setActive()
    }
    
    @IBAction func onClickFastFood(_ sender: Any) {
        badHabits.append("fast food")
        fastFoodButton.setActive()
    }
    
    @IBAction func onClickLazy(_ sender: Any) {
        badHabits.append("lazy")
        lazyButton.setActive()
    }
    
    @IBAction func onClickSkipMeals(_ sender: Any) {
        badHabits.append("skip meals")
        skipMealsButton.setActive()
    }
    
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
