//
//  ViewControllerFactory.swift
//  weatherAppT2
//
//  Created by Nikolay Dementiev on 23.02.2019.
//  Copyright © 2019 test. All rights reserved.
//

import UIKit

class ViewControllerFactory {

    static func makeInitialViewController(with presenter: InitialPresenter) -> UIViewController {
        let vc: InitialViewController = Storyboard.main.instantiateViewController()
        vc.output = presenter
        presenter.view = vc
        return vc
    }

    static func makeForecastDataPresenterViewController(with presenter: ForecastDataPresenter) -> UIViewController {
        let vc: ForecastDataPresenterViewController = Storyboard.main.instantiateViewController()
        vc.output = presenter
        presenter.view = vc
        return vc
    }

}
