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
    case iconDownload = "http://openweathermap.org/img/w"
}

enum EndPoint {
    static let fiveDaysForecast = "/forecast"
}

enum ParameterKey: String {
    case appid = "appid"

    var key: String {
        return rawValue
    }
    var value: String {
        switch self {
        case .appid: return "160f031b775f911df57be129f2e0d756"
        }
    }
}

struct ServerConfig {
    let baseUrl: String
    let headers: HeadersDict
    let timeout: TimeInterval = 40.0
    let emptyDataStatusCodes: Set<Int> = [429]

    // MARK: - API
    static func defaultConfig() -> ServerConfig {
        return ServerConfig(baseUrl: HostPath.base.rawValue,
                            headers: ServerConfig.defaultHeaders())
    }

    static func addRequiredParemeters(_ params: JSON?) -> JSON? {
        guard var params = params else { return nil}

        let appid = ParameterKey.appid
        if params.filter ({$0.key == appid.key}).count == 0 {
            params.updateValue(appid.value, forKey: appid.key)
        }

        return params
    }

    static func getImageDownloadHostPath() -> String {
        return HostPath.iconDownload.rawValue
    }

    // MARK: - Private API
    private static func defaultHeaders() -> HeadersDict {
        return [:]
    }

}
