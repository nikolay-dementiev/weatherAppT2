//
//  UIViewController+Additions.swift
//  weatherAppT2
//
//  Created by Nikolay Dementiev on 24.02.2019.
//  Copyright © 2019 test. All rights reserved.
//

import UIKit

extension UIViewController {

    // MARK: - Spinner animation
    func spinnerStartAnimating(spinner child: SpinnerViewController?) {
        guard let child = child else {
            return
        }
        addChild(child)
        child.view.frame = view.frame
        view.addSubview(child.view)
        child.didMove(toParent: self)
    }

    func spinnerStopAnimating(spinner child: SpinnerViewController?) {
        guard let child = child else {
            return
        }
        child.willMove(toParent: nil)
        child.view.removeFromSuperview()
        child.removeFromParent()
    }
}
