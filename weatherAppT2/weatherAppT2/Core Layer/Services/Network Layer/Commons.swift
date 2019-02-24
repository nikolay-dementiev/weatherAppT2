//
//  Commons.swift
//  weatherAppT2
//
//  Created by Nikolay Dementiev on 23.02.2019.
//  Copyright © 2019 test. All rights reserved.
//

enum Result<Value> {
    case success(Value)
    case failure(NetworkError)
}

typealias HeadersDict = [String: String]
typealias JSON = [String : Any]
