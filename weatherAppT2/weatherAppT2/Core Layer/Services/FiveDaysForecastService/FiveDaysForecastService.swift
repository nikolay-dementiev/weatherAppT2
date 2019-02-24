//
//  FiveDayForecastService.swift
//  weatherAppT2
//
//  Created by Nikolay Dementiev on 23.02.2019.
//  Copyright © 2019 test. All rights reserved.
//

import Foundation

typealias ListForecastItem = FiveDaysForecastResponseItem.ListForecastResponseItem

class FiveDayForecastService {
    typealias FiveDayForecastCompletion = (Result<[ListForecastItem]>) -> ()

    // MARK: - Private Props
    private var networkService = NetworkService()

    // MARK: - API
    func getFiveDaysForecast(with params: FiveDayForecastRequestParams,
                             completion: @escaping FiveDayForecastCompletion) {

        let request = Request(method: .get,
                              endpoint: EndPoint.fiveDaysForecast,
                              params: params.toJson)

        networkService.execute(request) { (result: Result<FiveDaysForecastResponseItem>) in
            switch result {
            case .success(let response):
                completion(.success(response.forecastList))
            case .failure(let error):
                completion(.failure(error))
            }
        }
    }

}
