//
//  UIView+Shadow.swift
//  Instagram Profile
//
//  Created by Mohamed Elbana on 10/7/19.
//  Copyright © 2019 Mohamed Elbana. All rights reserved.
//

import Foundation
import UIKit

extension UIView {
    
    func setShadowAndRadiusToView(isCornerRadius: Bool, isShadow: Bool, radius: Int ) {
        if isShadow {
            self.layer.shadowColor = UIColor(red: 0/255.0 , green: 0/255.0, blue: 0/255.0, alpha: 0.16).cgColor
            self.layer.shadowOffset = CGSize(width: 0, height: 2)
            self.layer.shadowRadius = 1
            self.layer.shadowOpacity = 0.5
        }
        
        if isCornerRadius {
            self.layer.cornerRadius = CGFloat(radius)
        }
        
        self.layer.masksToBounds = false
    }
}



