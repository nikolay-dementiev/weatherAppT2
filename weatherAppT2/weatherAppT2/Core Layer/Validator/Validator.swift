//
//  Validator.swift
//  weatherAppT2
//
//  Created by Nikolay Dementiev on 24.02.2019.
//  Copyright © 2019 test. All rights reserved.
//

import Foundation

class Validator {
    // MARK: - API
    static func isValidCityName(_ candidate: String?) -> Bool {
        guard let candidate = candidate else { return false }
        return candidate.count >= 2
    }
}
