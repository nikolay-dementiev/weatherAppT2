//
//  ForecastDataPresenter.swift
//  weatherAppT2
//
//  Created by Nikolay Dementiev on 24.02.2019.
//  Copyright © 2019 test. All rights reserved.
//

import Foundation

class ForecastDataPresenter {
    weak var view: ForecastDataViewInput!
    private var farecastData: [ListForecastItemDTO]

    init(with items: [ListForecastItem]) {
        self.farecastData = FiveDaysForecastMapper.listForecastItemsToDTO(items)
    }
}


extension ForecastDataPresenter: ForecastDataViewOutput {
    func viewIsReady() {
        view.setupInitialState()
        view.renderForecastData(farecastData)
    }

}

