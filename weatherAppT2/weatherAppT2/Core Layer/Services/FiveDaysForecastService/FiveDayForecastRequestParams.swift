//
//  FiveDayForecastRequestParams.swift
//  weatherAppT2
//
//  Created by Nikolay Dementiev on 23.02.2019.
//  Copyright © 2019 test. All rights reserved.
//

struct FiveDayForecastRequestParams {
    let countryName: String
}

extension FiveDayForecastRequestParams : JSONSerializable {
    var toJson: JSON {
        return ["q": countryName,
                "units": "metric"]
    }
}
