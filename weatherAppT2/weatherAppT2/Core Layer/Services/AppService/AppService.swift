//
//  AppService.swift
//  weatherAppT2
//
//  Created by Nikolay Dementiev on 23.02.2019.
//  Copyright © 2019 test. All rights reserved.
//

import UIKit

class AppService {
    // MARK: - Props
    static let shared = AppService()
    var showNetworkActivity = false { didSet { showNetworkActivityIndicator(showNetworkActivity) }}
    private init() {}

    // MARK: - Private API
    private func showNetworkActivityIndicator(_ value: Bool) {
        DispatchQueue.main.async {
            UIApplication.shared.isNetworkActivityIndicatorVisible = value
        }
    }

}
