//
//  ViewController.swift
//  weatherAppT2
//
//  Created by Nikolay Dementiev on 23.02.2019.
//  Copyright © 2019 test. All rights reserved.
//

import UIKit

class InitialViewController: BaseViewController {

    // MARK: - Props
    var output: InitialViewOutput!

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    // MARK: - Actions
    @IBAction private func searchAction(_ sender: Any) {
        output.didSearchAction(for: "Kiev,UA")
    }

}


extension InitialViewController: InitialViewInput {
    func setupInitialState() {

    }

    func showCommonInfo(_ info: String) {
        
    }
}
