//
//  UIColor+Extensions.swift
//  Instagram Profile
//
//  Created by Mohamed Elbana on 10/7/19.
//  Copyright © 2019 Mohamed Elbana. All rights reserved.
//

import Foundation
import UIKit

extension UIColor {
    
    static let primary = UIColor(hex: 0xFFFFFF)
    static let accent = UIColor(hex: 0x000000)
    static let title = UIColor(hex: 0x4F6983)
    static let backSpace = UIColor(hex: 0xF7F7F7)
    
    convenience init(red: Int, green: Int, blue: Int, a: CGFloat = 1.0) {
        self.init(red: CGFloat(red) / 255.0,green: CGFloat(green) / 255.0, blue: CGFloat(blue) / 255.0, alpha: a)
    }
    
    convenience init(hex: Int, a: CGFloat = 1.0) {
        self.init(red: (hex >> 16) & 0xFF, green: (hex >> 8) & 0xFF, blue: hex & 0xFF, a: a)
    }
}
