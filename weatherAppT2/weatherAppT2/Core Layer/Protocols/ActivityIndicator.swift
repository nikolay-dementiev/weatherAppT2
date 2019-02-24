//
//  ActivityIndicator.swift
//  weatherAppT2
//
//  Created by Nikolay Dementiev on 24.02.2019.
//  Copyright © 2019 test. All rights reserved.
//

import UIKit

protocol ActivityIndicator {
    var spinnerViewController: SpinnerViewController? {get set}
    func startAnimate()
    func stopAnimate()
}

extension ActivityIndicator where Self: UIViewController {

    func startAnimate() {
        DispatchQueue.main.async {
            self.spinnerStartAnimating(spinner: self.spinnerViewController)
        }
    }

    func stopAnimate() {
        DispatchQueue.main.async {
            self.spinnerStopAnimating(spinner: self.spinnerViewController)
        }
    }
}
