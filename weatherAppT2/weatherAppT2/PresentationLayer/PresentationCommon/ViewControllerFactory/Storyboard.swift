//
//  Storyboard.swift
//  weatherAppT2
//
//  Created by Nikolay Dementiev on 23.02.2019.
//  Copyright © 2019 test. All rights reserved.
//

import UIKit

protocol StoryboardIdentifiable {
    static var storyboardIdentifier: String { get }
}

extension StoryboardIdentifiable {
    static var storyboardIdentifier: String { return String(describing: self) }
}

extension UIViewController: StoryboardIdentifiable {}

enum Storyboard: String {
    case main = "Main"

    func instantiateViewController<T: UIViewController>() -> T {
        let bundle = Bundle(for: T.self)
        let storyboard = UIStoryboard(name: rawValue, bundle: bundle)
        guard let vc = storyboard.instantiateViewController(withIdentifier: T.storyboardIdentifier) as? T else {
            fatalError("failed to load viewController with storyboard name: \(rawValue), identifier: \(T.storyboardIdentifier)")
        }
        return vc
    }
}
