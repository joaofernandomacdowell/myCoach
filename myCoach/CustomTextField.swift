//
//  CustomTextField.swift
//  myCoach
//
//  Created by Joao on 2/22/17.
//  Copyright © 2017 Mycoach. All rights reserved.
//

import UIKit

class CustomTextField: UITextField {

    public func addBottomBorder () {
        
        let border = CALayer()
        let width = CGFloat(2.0)
        border.borderColor = UIColor.darkGray.cgColor
        border.frame = CGRect(x: 0, y: self.frame.size.height - width, width:  self.frame.size.width, height: self.frame.size.height)
        
        border.borderWidth = width
        self.layer.addSublayer(border)
        self.layer.masksToBounds = true
        
    }
    
    public func setPlaceholder (text:String) {
        
        let placeholderColor = UIColor(red:0.29, green:0.36, blue:0.51, alpha:1.0)
        self.attributedPlaceholder = NSAttributedString(string: text, attributes: [NSForegroundColorAttributeName: placeholderColor])
    }
}
