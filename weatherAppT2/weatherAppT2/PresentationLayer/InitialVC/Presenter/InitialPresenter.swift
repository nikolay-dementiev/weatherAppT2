//
//  InitialPresenter.swift
//  weatherAppT2
//
//  Created by Nikolay Dementiev on 23.02.2019.
//  Copyright © 2019 test. All rights reserved.
//


class InitialPresenter {

    // MARK: - Props
    weak var view: InitialViewInput!
    weak var flowDelegate: FiveDaysForecastFlowDelegate?

    // MARK: - Private Props
    private let restService = FiveDayForecastService()

    // MARK: - Private API

}


extension InitialPresenter: InitialViewOutput {
    func viewIsReady() {
        view.setupInitialState()
    }

    func didSearchAction(for code: String?) {
//        guard let code = code, Validator.isValidPostCode(code) else { return }
//        let params = RestaurantsRequestParams(code: code)
//        restService.getRestaurants(with: params) {[weak self] (result) in
//            switch result {
//            case .success(let items):
//                self?.flowDelegate?.didReceiveRastaurants(items)
//            case .failure(let error):
//                self?.view.showAlert(title: nil, message: error.localizedDescription)
//            }
//        }
    }

}
