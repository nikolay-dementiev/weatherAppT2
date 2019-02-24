//
//  AppDelegate.swift
//  weatherAppT2
//
//  Created by Nikolay Dementiev on 23.02.2019.
//  Copyright © 2019 test. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    private lazy var rootCoordinator: Coordinator = makeRootCoonrdinator()

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {

        rootCoordinator.start()
        return true
    }

    // MARK: - Private API
    private func makeRootCoonrdinator() -> Coordinator {
        if let navigationVC = window?.rootViewController as? UINavigationController {
            return InitialCoordinator(rootVC: navigationVC)
        } else {
            fatalError("Unexpected root view controller value")
        }
    }

}

