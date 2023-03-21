//
//  Model.swift
//  JSON parsing
//
//  Created by Evgeniy Kuzin on 20.03.2023.
//

import Foundation

struct Valute: Decodable {
    let Date: String
    let Valute: [String: ValuteInfo]
}

struct ValuteInfo: Decodable {
    let CharCode: String
    let Name: String
    let Value: Double
    let Previous: Double
}
