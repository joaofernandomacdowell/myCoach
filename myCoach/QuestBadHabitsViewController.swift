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
    
    var badHabits: NSMutableArray = []
    
    @IBAction func onClickSmoker(_ sender: Any) {
        handleSelection(badHabitButton: smokerButton, badHabit: "smoker")
    }
    
    @IBAction func onClickFastFood(_ sender: Any) {
        handleSelection(badHabitButton: fastFoodButton, badHabit: "fast food")
    }
    
    @IBAction func onClickLazy(_ sender: Any) {
        handleSelection(badHabitButton: lazyButton, badHabit: "lazy")
    }
    
    @IBAction func onClickSkipMeals(_ sender: Any) {
        handleSelection(badHabitButton: skipMealsButton, badHabit: "skip meals")
    }
    
    internal func handleSelection(badHabitButton: CustomButton, badHabit: String) {
        if badHabitButton.isTouchInside {
            badHabitButton.setInactive()
            badHabits.remove(badHabit)
        } else {
            badHabitButton.setActive()
            badHabits.add(badHabit)
        }
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
