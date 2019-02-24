//
//  ForecastDataPresenterViewController.swift
//  weatherAppT2
//
//  Created by Nikolay Dementiev on 24.02.2019.
//  Copyright © 2019 test. All rights reserved.
//

import UIKit

class ForecastDataPresenterViewController: BaseViewController {
    private enum Settings {
        static let cellItemHeigh: CGFloat = 120
    }

    // MARK: - Props
    var output: ForecastDataViewOutput!
    @IBOutlet weak var tableView: UITableView!

    // MARK: - Private Props
    private var dataSource: [ListForecastItemDTO] = [] {
        didSet {
            tableView.reloadData()
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        output.viewIsReady()
        tableView.tableFooterView = UIView()
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.isNavigationBarHidden = false
    }

}

// MARK: - ForecastDataViewInput
extension ForecastDataPresenterViewController: ForecastDataViewInput {

    func renderForecastData(_ forecastData: [ListForecastItemDTO]) {
        dataSource = forecastData
    }
}

//MARK: - UITableViewDataSource
extension ForecastDataPresenterViewController: UITableViewDataSource {

    func numberOfSections(in tableView: UITableView) -> Int {
        return dataSource.count
    }

    func tableView(_ tableView: UITableView,
                   titleForHeaderInSection section: Int) -> String? {

        return dataSource[section].date?.formatForCellSection()
    }

    func tableView(_ tableView: UITableView,
                   numberOfRowsInSection section: Int) -> Int {

        return 1
    }

    func tableView(_ tableView: UITableView,
                   cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        let cell = tableView.dequeueReusableCell(withIdentifier: ForecastDayCell.defaultReuseIdentifier, for: indexPath) as! ForecastDayCell
        cell.renderForecast(dataSource[indexPath.section])

        return cell
    }
}

//MARK: - UITableViewDelegate
extension ForecastDataPresenterViewController: UITableViewDelegate {

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {

        return Settings.cellItemHeigh
    }
}

