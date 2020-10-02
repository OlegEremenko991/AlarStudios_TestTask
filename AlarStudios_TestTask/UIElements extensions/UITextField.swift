//
//  UITextField_Extension.swift
//  AlarStudios_TestTask
//
//  Created by Олег Еременко on 02.10.2020.
//

import UIKit

extension UITextField {
    
    func setupTextField(placeholder: String, borderWidth: CGFloat, borderColor: UIColor, cornerRadius: CGFloat, isSecureTextEntry: Bool) {
        self.placeholder = placeholder
        self.layer.borderWidth = borderWidth
        self.layer.borderColor = borderColor.cgColor
        self.layer.cornerRadius = cornerRadius
        self.isSecureTextEntry = isSecureTextEntry
    }
    
}
