//
//  String+Additions.swift
//  weatherAppT2
//
//  Created by Nikolay Dementiev on 23.02.2019.
//  Copyright © 2019 test. All rights reserved.
//

import Foundation

extension String {
    func stringByAdding(urlEncodedFields fields: JSON?) throws -> String {
        guard let f = fields else { return self }
        return try f.urlEncodedString(base: self)
    }
}

