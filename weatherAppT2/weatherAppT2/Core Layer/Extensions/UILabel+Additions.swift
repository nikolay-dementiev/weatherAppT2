//
//  UILabel+Additions.swift
//  weatherAppT2
//
//  Created by Nikolay Dementiev on 24.02.2019.
//  Copyright © 2019 test. All rights reserved.
//

import UIKit

extension UILabel {
    @discardableResult func font(_ font: UIFont) -> UILabel {
        self.font = font
        return self
    }

    @discardableResult func textColor(_ textColor: UIColor) -> UILabel {
        self.textColor = textColor
        return self
    }

}

func applyStyle(font: UIFont, textColor: UIColor, to labels: UILabel...) {
    labels.forEach { $0.font(font)
        .textColor(textColor)
    }
}
