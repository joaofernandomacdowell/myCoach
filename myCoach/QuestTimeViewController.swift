//
//  QuestTimeViewController.swift
//  myCoach
//
//  Created by Joao on 2/25/17.
//  Copyright © 2017 Mycoach. All rights reserved.
//

import UIKit

class QuestTimeViewController: UIViewController {

    @IBOutlet weak var thirtyToButton: CustomButton!
    @IBOutlet weak var sixtyToButton: CustomButton!
    
    
    internal func customizeUI() {
        thirtyToButton.addBorder()
        sixtyToButton.addBorder()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        customizeUI()
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
}
