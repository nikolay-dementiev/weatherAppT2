//
//  NetworkServiceProtocol.swift
//  weatherAppT2
//
//  Created by Nikolay Dementiev on 23.02.2019.
//  Copyright © 2019 test. All rights reserved.
//

protocol NetworkServiceProtocol {
    var configuration: ServerConfig { get }
    var headers: HeadersDict { get }

    init(_ configuration: ServerConfig)
    func execute<Response>(_ request: RequestProtocol, completion: @escaping (_ result: Result<Response>) -> ()) where Response: Codable
}
