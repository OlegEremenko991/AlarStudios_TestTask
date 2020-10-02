//
//  UD.swift
//  AlarStudios_TestTask
//
//  Created by Олег Еременко on 02.10.2020.
//

import Foundation

class UD {
    
    // MARK: Private properties
    
    private let codeKey = "codeKey"
    
    // MARK: Public properties
    
    static let shared = UD()
    
    var code: String? {
        set { UserDefaults.standard.set(newValue, forKey: codeKey) }
        get { return UserDefaults.standard.string(forKey: codeKey) ?? "" }
    }

}
