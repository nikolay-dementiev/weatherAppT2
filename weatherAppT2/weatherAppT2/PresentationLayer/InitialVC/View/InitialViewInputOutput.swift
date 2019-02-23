//
//  InitialViewInputOutput.swift
//  weatherAppT2
//
//  Created by Nikolay Dementiev on 23.02.2019.
//  Copyright © 2019 test. All rights reserved.
//

protocol InitialViewInput: class, AlertPresentable {
    func setupInitialState()
    func showCommonInfo(_ info: String)
}

protocol InitialViewOutput {
    func viewIsReady()
    func didSearchAction(for code: String?)
}

