//
//  ForecastDayCell.swift
//  weatherAppT2
//
//  Created by Nikolay Dementiev on 24.02.2019.
//  Copyright © 2019 test. All rights reserved.
//

import UIKit

class ForecastDayCell: UITableViewCell {
    private var dataSourse: ListForecastItemDTO?

    func renderForecast(_ forecastData: ListForecastItemDTO) {
        dataSourse = forecastData
    }
}
