//
//  UIView+Additions.swift
//  weatherAppT2
//
//  Created by Nikolay Dementiev on 24.02.2019.
//  Copyright © 2019 test. All rights reserved.
//

import UIKit

extension UIView {
    func applyDefaultStyleShadow(_ cornerRadius: CGFloat) {
        let shadowPath = UIBezierPath(roundedRect: bounds, cornerRadius: cornerRadius)
        layer.masksToBounds = false
        layer.shadowOffset = CGSize(width: 0, height: 2)
        layer.shadowOpacity = 1.0
        layer.shadowPath = shadowPath.cgPath
        layer.shadowColor = UIColor.lightGray.cgColor
    }
}
