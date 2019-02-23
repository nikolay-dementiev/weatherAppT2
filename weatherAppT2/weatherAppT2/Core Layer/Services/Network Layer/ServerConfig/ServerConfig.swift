//
//  ServerConfig.swift
//  weatherAppT2
//
//  Created by Nikolay Dementiev on 23.02.2019.
//  Copyright © 2019 test. All rights reserved.
//

import Foundation

private enum HostPath: String {
    case base = "http://api.openweathermap.org/data/2.5"
}

enum EndPoint {
    static let fiveDaysForecast = "/forecast"
}

struct ServerConfig {
    let baseUrl: String
    let headers: HeadersDict
    let timeout: TimeInterval = 40.0    /// Global timeout for any request
    let emptyDataStatusCodes: Set<Int> = [204, 205]

    // MARK: - API
    static func defaultConfig() -> ServerConfig {
        return ServerConfig(baseUrl: HostPath.base.rawValue, headers: ServerConfig.defaultHeaders())
    }

    // MARK: - Private API
    private static func defaultHeaders() -> HeadersDict {
        return [:]
    }

}
