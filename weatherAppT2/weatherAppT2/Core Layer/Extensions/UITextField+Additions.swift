//
//  UITextField+Additions.swift
//  weatherAppT2
//
//  Created by Nikolay Dementiev on 24.02.2019.
//  Copyright © 2019 test. All rights reserved.
//

import UIKit

extension UITextField {
    @discardableResult func font(_ font: UIFont) -> UITextField {
        self.font = font
        return self
    }

    @discardableResult func textColor(_ textColor: UIColor) -> UITextField {
        self.textColor = textColor
        return self
    }

}

