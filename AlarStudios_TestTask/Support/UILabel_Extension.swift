//
//  UILabel_Extension.swift
//  AlarStudios_TestTask
//
//  Created by Олег Еременко on 02.10.2020.
//

import UIKit

extension UILabel {
    
    func setupLabel(text: String, textAlignment: NSTextAlignment, font: UIFont, textColor: UIColor, cornerRadius: CGFloat) {
        self.text = text
        self.textAlignment = textAlignment
        self.font = font
        self.textColor = textColor
        self.layer.cornerRadius = cornerRadius
    }
    
}
