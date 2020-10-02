//
//  RequestType.swift
//  AlarStudios_TestTask
//
//  Created by Олег Еременко on 02.10.2020.
//

import Foundation

enum RequestType {
    case getAuthorization(String, String)
    case getData(String, String)
    
    var stringURL: String {
        switch self {
        case .getAuthorization(let login, let password):
            return "http://www.alarstudios.com/test/auth.cgi?username=\(login)&password=\(password)"
        case .getData(let code, let pageNumber):
            return "http://www.alarstudios.com/test/data.cgi?code=\(code)&p=\(pageNumber)"
        }
    }
    
    var finalURL: URL? {
        return URL(string: self.stringURL)
    }
}
