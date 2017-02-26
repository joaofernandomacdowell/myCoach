//
//  CustomButton.swift
//  myCoach
//
//  Created by Joao on 2/16/17.
//  Copyright © 2017 Mycoach. All rights reserved.
//

import UIKit

@IBDesignable class CustomButton: UIButton {

    public func addBorder() {
        
        let borderColor:UIColor = UIColor(red:0.07, green:0.96, blue:0.62, alpha:1.0)
        
        self.layer.borderWidth = 1.0
        self.layer.borderColor = borderColor.cgColor
        self.titleEdgeInsets = UIEdgeInsetsMake(10, 10, 10, 10)
        
    }

}
