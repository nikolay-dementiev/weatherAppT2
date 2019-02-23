//
//  FiveDaysForecastFlowDelegate.swift
//  weatherAppT2
//
//  Created by Nikolay Dementiev on 23.02.2019.
//  Copyright © 2019 test. All rights reserved.
//

protocol FiveDaysForecastFlowDelegate: class {
    func didReceiveFiveDaysForecast(_ items: [ListForecastItemDTO])
}
