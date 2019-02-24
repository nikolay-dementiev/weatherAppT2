//
//  FiveDaysForecastMapper.swift
//  weatherAppT2
//
//  Created by Nikolay Dementiev on 23.02.2019.
//  Copyright © 2019 test. All rights reserved.
//

import Foundation

struct FiveDaysForecastMapper {

    static func listForecastItemsToDTO(_ data: [ListForecastItem]) -> [ListForecastItemDTO] {
        var valueForReturn: [ListForecastItemDTO] = []
        let items = forecastItemsToDTO(data)

        let datesArray = items
            .compactMap { $0.dateAtBeginning }
            .reduce([], { $0.contains($1) ? $0 : $0 + [$1] })
        
        datesArray.forEach { day in
            let filterArray = items.filter { day == $0.dateAtBeginning }
            valueForReturn.append(ListForecastItemDTO.init(date: day, list: filterArray))
        }

        return valueForReturn
    }

    private static func forecastItemsToDTO(_ data: [ListForecastItem]) -> [ForecastItemDTO] {

        return data.map { (item: ListForecastItem) -> ForecastItemDTO in

            var date: Date?
            if let dateIn = item.date {
                date = Date(timeIntervalSince1970: Double(dateIn))
            }

            return ForecastItemDTO(date: date,
                                   dateAtBeginning: date?.dateAtBeginningOfDay(),
                                   temperature: item.temperatureMain?.temperature,
                                   temperatureMax: item.temperatureMain?.maximumTemperature,
                                   temperatureMin: item.temperatureMain?.minimumTemperature,                              iconWeather: item.weatherList?.compactMap{ $0?.icon }.first
            )
        }
    }
}
