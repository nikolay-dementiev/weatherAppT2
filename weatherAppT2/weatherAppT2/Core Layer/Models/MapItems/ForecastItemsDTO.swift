//
//  ForecastItemsDTO.swift
//  weatherAppT2
//
//  Created by Nikolay Dementiev on 23.02.2019.
//  Copyright © 2019 test. All rights reserved.
//

import Foundation

struct ListForecastItemDTO {
    let date: Date?
    let list: [ForecastItemDTO]
}

struct ForecastItemDTO {
    let date: Date?
    let dateAtBeginning: Date?
    let temperature: Float?
    let temperatureMax: Float?
    let temperatureMin: Float?
    let iconWeather: String?
}
