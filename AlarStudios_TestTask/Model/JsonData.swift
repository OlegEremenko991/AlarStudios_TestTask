//
//  JsonData.swift
//  AlarStudios_TestTask
//
//  Created by Олег Еременко on 02.10.2020.
//

import Foundation

struct JsonData: Codable {
    var id: String?
    var name: String?
    var country: String?
    var lat: Double?
    var lon: Double?
}
