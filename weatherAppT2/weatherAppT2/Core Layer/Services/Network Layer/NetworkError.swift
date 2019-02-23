//
//  NetworkError.swift
//  weatherAppT2
//
//  Created by Nikolay Dementiev on 23.02.2019.
//  Copyright © 2019 test. All rights reserved.
//

import Foundation

enum NetworkError: Error {
    case undefinedError
    case dataIsNotEncodable(_: Any)
    case stringFailedToDecode(_: Data, info: String)
    case invalidURL(_: String)
    case networkRequestError(_: Int, description: String)
    case missingHTTPResponse
    case swiftError(String)
    case common(String?)
}
