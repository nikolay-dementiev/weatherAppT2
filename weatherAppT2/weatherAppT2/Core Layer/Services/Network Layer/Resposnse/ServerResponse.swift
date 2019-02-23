//
//  ServerResponse.swift
//  weatherAppT2
//
//  Created by Nikolay Dementiev on 23.02.2019.
//  Copyright © 2019 test. All rights reserved.
//

import Foundation

enum ServerResponse {
    case success(urlResponse: HTTPURLResponse, data: Data, request: URLRequest?)
    case failure(error: NetworkError, request: URLRequest?)

    init(data: Data?, urlResponse: URLResponse?, error: Swift.Error?, request: URLRequest?) {
        if let error = error {
            self = .failure(error: NetworkError.swiftError(error.localizedDescription), request: request)

        } else if let response = urlResponse as? HTTPURLResponse {
            switch response.statusCode {
            case 200...299:
                self = .success(urlResponse: response, data: data ?? Data(), request: request)
            default:
                let error = NetworkError.networkRequestError(response.statusCode,
                                                             description: HTTPURLResponse.localizedString(forStatusCode: response.statusCode))
                self = .failure(error: error, request: request)
            }
        } else {
            self = .failure(error: NetworkError.missingHTTPResponse, request: request)
        }
    }

}
