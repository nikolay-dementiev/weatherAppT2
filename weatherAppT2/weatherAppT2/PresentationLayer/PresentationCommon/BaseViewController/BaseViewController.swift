//
//  BaseViewController.swift
//  weatherAppT2
//
//  Created by Nikolay Dementiev on 24.02.2019.
//  Copyright © 2019 test. All rights reserved.
//

import UIKit

class BaseViewController: UIViewController, ActivityIndicator {

    var spinnerViewController: SpinnerViewController?

    override func viewDidLoad() {
        super.viewDidLoad()

        spinnerViewController = SpinnerViewController()
    }
}
