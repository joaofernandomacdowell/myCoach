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
    
    var shape: String = ""
  
    @IBAction func onClickTotallyInShape(_ sender: Any) {
        shape = "totally in shape"
        totallyInShapeButton.setActive()
        inShapeButton.setInactive()
        outOfShapeButton.setInactive()
    }
    
    @IBAction func onClickInShape(_ sender: Any) {
        shape = "in shape"
        inShapeButton.setActive()
        totallyInShapeButton.setInactive()
        outOfShapeButton.setInactive()
    }
    
    @IBAction func onClickOutOfShape(_ sender: Any) {
        shape = "out of shape"
        outOfShapeButton.setActive()
        totallyInShapeButton.setInactive()
        inShapeButton.setInactive()
    }
    
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
