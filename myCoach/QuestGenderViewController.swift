//
//  ViewController.swift
//  myCoach
//
//  Created by Joao on 2/16/17.
//  Copyright © 2017 Mycoach. All rights reserved.
//

import UIKit
import Firebase

class QuestGenderViewController: UIViewController {

    @IBOutlet weak var maleButton: CustomButton!
    @IBOutlet weak var femaleButton: CustomButton!
    @IBOutlet weak var questionLabel: QuestionLabel!
    
    
    internal func customizeUI () {   
        questionLabel.setFontFamily()
        maleButton.addBorder()
        femaleButton.addBorder()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        customizeUI()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

