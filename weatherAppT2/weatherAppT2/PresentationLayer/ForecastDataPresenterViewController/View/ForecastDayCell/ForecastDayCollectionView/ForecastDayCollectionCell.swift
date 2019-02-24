//
//  ForecastDayCollectionCell.swift
//  weatherAppT2
//
//  Created by Nikolay Dementiev on 24.02.2019.
//  Copyright © 2019 test. All rights reserved.
//

import UIKit

class ForecastDayCollectionCell: UICollectionViewCell {

    // MARK: - Props
    @IBOutlet weak private var conteinerView: UIView!
    @IBOutlet weak private var imageIcon: UIImageView!
    @IBOutlet weak private var spinner: UIActivityIndicatorView!
    @IBOutlet weak private var temperatureLabel: UILabel!
    @IBOutlet weak private var timeLabel: UILabel!
    lazy private var downloader = ImageDownloader()

    // MARK: - Private Props
    private var dataSource: ForecastItemDTO? {
        didSet {
            fullFillCell()
        }
    }

    // MARK: - API
    override func awakeFromNib() {
        super.awakeFromNib()
        setupStyles()
    }

    override func layoutSubviews() {
        super.layoutSubviews()
        updateShadowLayer()
    }

    override func prepareForReuse() {
        super.prepareForReuse()
        downloader.cancelDownload()
        imageIcon.image = nil
    }

    func renderForecast(_ forecastData: ForecastItemDTO?) {
        dataSource = forecastData
    }

    // MARK: - Private API
    private func fullFillCell() {
        guard let dataSource = dataSource else { return }

        var temperatureLabelText = ""
        if let temperature = dataSource.temperature {
            temperatureLabelText = temperature.description
        }
        temperatureLabel.text = "\("TemperatureTitle".localized) \(temperatureLabelText)\("TemperatureGradUnit".localized)"

        let timeLabelText = dataSource.date?.getHour() ?? ""
        timeLabel.text = "\("TimeTitle".localized) \(timeLabelText)\("TimeHourUnit".localized)"

        if let iconWeather = dataSource.iconWeatherURL {
            downloadMedia(iconWeather)
        }
    }

    private func setupStyles() {
        imageIcon.layer.cornerRadius = 8
        imageIcon.layer.borderWidth = 1
        imageIcon.layer.borderColor = UIColor.lightGray.cgColor
        imageIcon.layer.masksToBounds = true
        conteinerView.layer.cornerRadius = 8

        applyStyle(font: .smallerFont,
                   textColor: .textColor,
                   to: temperatureLabel, timeLabel)
    }


    private func downloadMedia(_ url: String) {
        guard let url = URL(string: url) else { return }
        spinner.startAnimating()
        downloader.downloadImage(from: url) {[weak self] (result) in
            DispatchQueue.main.async {
                self?.spinner.stopAnimating()
            }

            if case let .success(image) = result {
                self?.setMedia(image)
            }
        }
    }

    private func setMedia(_ image: UIImage) {
        DispatchQueue.main.async {
            self.imageIcon.image = image
        }
    }

    private func updateShadowLayer() {
        contentView.applyDefaultStyleShadow(conteinerView.layer.cornerRadius)
    }
    
}
