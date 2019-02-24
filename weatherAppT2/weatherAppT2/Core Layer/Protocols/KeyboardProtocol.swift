//
//  KeyboardProtocol.swift
//  weatherAppT2
//
//  Created by Nikolay Dementiev on 24.02.2019.
//  Copyright © 2019 test. All rights reserved.
//

import UIKit

protocol KeyboardProtocol: class {
    func addKeyboardObserver()
    func removeKeyboardObserver()
    func keyboardWillShow(notification: Notification)
    func keyboardWillHide(notification: Notification)
}

extension KeyboardProtocol where Self: UIViewController {
    func addKeyboardObserver() {
        NotificationCenter.default.addObserver(forName: UIResponder.keyboardWillShowNotification,
                                               object: nil,
                                               queue: nil) { [weak self] notification in
                                                self?.keyboardWillShow(notification: notification)
        }

        NotificationCenter.default.addObserver(forName: UIResponder.keyboardWillHideNotification,
                                               object: nil,
                                               queue: nil) { [weak self] notification in
                                                self?.keyboardWillHide(notification: notification)
        }
    }

    func removeKeyboardObserver() {
        NotificationCenter.default.removeObserver(self)
    }

}
