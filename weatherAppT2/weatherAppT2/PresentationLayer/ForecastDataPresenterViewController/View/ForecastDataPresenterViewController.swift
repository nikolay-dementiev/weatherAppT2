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
        static let itemHeigh: CGFloat = 120
    }

    // MARK: - Props
    var output: ForecastDataViewOutput!
    @IBOutlet weak var tableView: UITableView!

    // MARK: - Private Props
    @IBOutlet weak var collectionView: UICollectionView!
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

}

// MARK: - ForecastDataViewInput
extension ForecastDataPresenterViewController: ForecastDataViewInput {

    func setupInitialState() {

    }

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

//
//// MARK: - UICollectionViewDataSource
//extension ForecastDataPresenterViewController: UICollectionViewDataSource {
//    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
//        return dataSource.count
//    }
//
//    public func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
//        let place = dataSource[indexPath.item]
//        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: PlaceCell.defaultReuseIdentifier, for: indexPath) as! PlaceCell
//        cell.renderPlace(place)
//        return cell
//    }
//
//}
//
//extension ForecastDataPresenterViewController: UICollectionViewDelegate {
//    func collectionView(_ collectionView: UICollectionView, willDisplay cell: UICollectionViewCell, forItemAt indexPath: IndexPath) {
//
//    }
//
//}
//
//// MARK: - UICollectionViewDelegateFlowLayout
//extension ForecastDataPresenterViewController: UICollectionViewDelegateFlowLayout {
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
//        return CGSize(width: collectionView.bounds.width - 2*Layout.padding, height: Layout.itemHeigh)
//    }
//}
