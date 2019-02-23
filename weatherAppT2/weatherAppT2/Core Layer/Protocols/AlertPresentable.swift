//
//  AlertPresentable.swift
//  weatherAppT2
//
//  Created by Nikolay Dementiev on 23.02.2019.
//  Copyright © 2019 test. All rights reserved.
//

import UIKit

protocol AlertPresentable {
    func showAlert(title: String?, message: String?)
}

extension AlertPresentable where Self: UIViewController {
    func showAlert(title: String?, message: String?) {
        let alertController = UIAlertController(title: title,
                                                message: message,
                                                preferredStyle: UIAlertController.Style.alert)
        alertController.addAction(UIAlertAction(title: "Ok",
                                                style: UIAlertAction.Style.default,
                                                handler: nil))

        DispatchQueue.main.async {
            self.present(alertController, animated: true, completion: nil)
        }
    }
}

