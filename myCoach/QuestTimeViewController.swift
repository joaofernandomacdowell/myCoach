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
    
    var time: String = ""
    
    @IBAction func onClickThrirty(_ sender: Any) {
        time = "30-60"
        thirtyToButton.setActive()
        sixtyToButton.setInactive()
    }
    
    @IBAction func onClickSixty(_ sender: Any) {
        time = "60-120"
        sixtyToButton.setActive()
        thirtyToButton.setInactive()
    }
    
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
