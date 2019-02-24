//
//  ForecastDataViewInputOutput.swift
//  weatherAppT2
//
//  Created by Nikolay Dementiev on 24.02.2019.
//  Copyright © 2019 test. All rights reserved.
//

protocol ForecastDataViewInput: class, AlertPresentable, ActivityIndicator {
    func setupInitialState()
    func renderForecastData(_ forecastData: [ListForecastItemDTO])
}

protocol ForecastDataViewOutput {
    func viewIsReady()
}

extension ForecastDataViewInput {
    func setupInitialState() {}
}
