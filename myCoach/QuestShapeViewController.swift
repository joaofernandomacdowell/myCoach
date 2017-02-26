//
//  QuestShapeViewController.swift
//  myCoach
//
//  Created by Joao on 2/25/17.
//  Copyright © 2017 Mycoach. All rights reserved.
//

import UIKit

class QuestShapeViewController: UIViewController {

    @IBOutlet weak var totallyInShapeButton: CustomButton!
    @IBOutlet weak var inShapeButton: CustomButton!
    @IBOutlet weak var outOfShapeButton: CustomButton!
    
    internal func customizeUI() {
        totallyInShapeButton.addBorder()
        inShapeButton.addBorder()
        outOfShapeButton.addBorder()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        customizeUI()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
}
