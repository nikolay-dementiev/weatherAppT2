//
//  FiveDaysForecastResponseItem.swift
//  weatherAppT2
//
//  Created by Nikolay Dementiev on 23.02.2019.
//  Copyright © 2019 test. All rights reserved.
//

//bluePrints: https://openweathermap.org/forecast5

import Foundation

struct FiveDaysForecastResponseItem: Codable {
    let cod: String
    let city: CityForecastResponseItem
    let forecastList: [ListForecastResponseItem]

    enum CodingKeys: String, CodingKey {
        case city = "city"
        case cod = "cod"
        case forecastList = "list"
    }
}

extension FiveDaysForecastResponseItem {
    struct CityForecastResponseItem: Codable {
        let id: Int?
        let name: String?
        let coordinate: CityForecastCoord
        let country: String?
        let population: Int?

        struct CityForecastCoord: Codable {
            let latitude: Float?
            let longitude: Float?

            enum CodingKeys: String, CodingKey {
                case latitude = "lat"
                case longitude = "lon"
            }
        }

        enum CodingKeys: String, CodingKey {
            case id = "id"
            case name = "name"
            case coordinate = "coord"
            case country = "country"
            case population = "population"
        }
    }
}

extension FiveDaysForecastResponseItem {
    struct ListForecastResponseItem: Codable {
        let date: Int?
        let temperatureMain: TemperatureForecastResponseItem?
        let dateCalculation: String?
        let weatherList: [WeatherListResponseItem?]?

        struct TemperatureForecastResponseItem: Codable {
            let temperature: Float?
            let minimumTemperature: Float?
            let maximumTemperature: Float?

            enum CodingKeys: String, CodingKey {
                case temperature = "temp"
                case minimumTemperature = "temp_min"
                case maximumTemperature = "temp_max"
            }
        }

        struct WeatherListResponseItem: Codable {
            let id: Int?
            let main: String?
            let description: String?
            let icon: String?

            enum CodingKeys: String, CodingKey {
                case id = "id"
                case main = "main"
                case description = "description"
                case icon = "icon"
            }
        }

        enum CodingKeys: String, CodingKey {
            case date = "dt"
            case temperatureMain = "main"
            case dateCalculation = "dt_txt"
            case weatherList = "weather"
        }
    }
}
