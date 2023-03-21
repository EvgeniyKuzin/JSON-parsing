//
//  Model.swift
//  JSON parsing
//
//  Created by Evgeniy Kuzin on 20.03.2023.
//

import Foundation

struct Valute: Decodable {
    let Date: String
    let Valute: ValuteName
}

struct ValuteName: Decodable {
    let GBP: ValuteInfo
    let BYN: ValuteInfo
    let USD: ValuteInfo
    let EUR: ValuteInfo
    let KZT: ValuteInfo
    let TRY: ValuteInfo
    let UAH: ValuteInfo
}

struct ValuteInfo: Decodable {
    let CharCode: String
    let Name: String
    let Value: Double
    let Previous: Double
}
