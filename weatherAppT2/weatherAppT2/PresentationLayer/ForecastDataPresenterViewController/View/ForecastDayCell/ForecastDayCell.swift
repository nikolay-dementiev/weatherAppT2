//
//  ForecastDayCell.swift
//  weatherAppT2
//
//  Created by Nikolay Dementiev on 24.02.2019.
//  Copyright © 2019 test. All rights reserved.
//

import UIKit

class ForecastDayCell: UITableViewCell {
    private enum Settings {
        static let collectionItemPadding: CGFloat = 5
        static let collectionItemsPerRow: CGFloat = 3
    }

    private var dataSource: ListForecastItemDTO?

    func renderForecast(_ forecastData: ListForecastItemDTO) {
        dataSource = forecastData
    }
}

extension ForecastDayCell : UICollectionViewDataSource {

    func collectionView(_ collectionView: UICollectionView,
                        cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {

        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: ForecastDayCollectionCell.defaultReuseIdentifier, for: indexPath) as! ForecastDayCollectionCell
//        cell.renderForecast(dataSource[indexPath.section])

        return cell
    }

    func collectionView(_ collectionView: UICollectionView,
                        numberOfItemsInSection section: Int) -> Int {
        return dataSource?.list.count ?? 0
    }
}

extension ForecastDayCell : UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        insetForSectionAt section: Int) -> UIEdgeInsets {

        let padding = Settings.collectionItemPadding
        return UIEdgeInsets.init(top: padding,
                                 left: padding,
                                 bottom: padding,
                                 right: padding)
    }

    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        sizeForItemAt indexPath: IndexPath) -> CGSize {

        let padding = Settings.collectionItemPadding
        let itemsPerRow = Settings.collectionItemsPerRow
        let itemWidth = collectionView.bounds.width/itemsPerRow - 2*padding
        let itemHeight = collectionView.bounds.height - 2*padding

        return CGSize(width: itemWidth, height: itemHeight)

    }

}
