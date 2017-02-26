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
    
    internal func setActiveBgColor() {
        let backgroundColor = UIColor(red:0.07, green:0.96, blue:0.62, alpha:1.0)
        
        self.layer.backgroundColor = backgroundColor.cgColor
    }
    
    internal func setActiveTitleColor() {
        let titleColor:UIColor = UIColor(red:0.08, green:0.19, blue:0.25, alpha:1.0)
        
        self.setTitleColor(titleColor, for: .normal)
    }
    
    internal func setInactiveBgColor() {
        let backgroundColor = UIColor(red:0.08, green:0.19, blue:0.25, alpha:1.0)
        
        self.layer.backgroundColor = backgroundColor.cgColor
    }
    
    internal func setInactiveTitleColor() {
        let titleColor:UIColor = UIColor(red:0.95, green:0.95, blue:0.95, alpha:1.0)
        
        self.setTitleColor(titleColor, for: .normal)
    }

    
    public func setActive() {
        setActiveTitleColor()
        setActiveBgColor()
    }
    
    public func setInactive() {
        setInactiveTitleColor()
        setInactiveBgColor()
    }
}
