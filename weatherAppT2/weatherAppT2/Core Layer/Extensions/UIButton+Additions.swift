//
//  UIButton+Additions.swift
//  weatherAppT2
//
//  Created by Nikolay Dementiev on 24.02.2019.
//  Copyright © 2019 test. All rights reserved.
//

import UIKit

extension UIButton {
    @discardableResult func cornerRadius(_ radius: CGFloat) -> UIButton {
        self.layer.cornerRadius = radius
        return self
    }

    @discardableResult func backgroundColor(_ color: UIColor) -> UIButton {
        self.backgroundColor = color
        return self
    }

    @discardableResult func titleColor(_ color: UIColor, for state: UIControl.State) -> UIButton {
        self.setTitleColor(color, for: state)
        return self
    }

    @discardableResult func font(_ font: UIFont) -> UIButton {
        self.titleLabel?.font(font)
        return self
    }
}

