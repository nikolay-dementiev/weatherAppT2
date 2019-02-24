//
//  Request.swift
//  weatherAppT2
//
//  Created by Nikolay Dementiev on 23.02.2019.
//  Copyright © 2019 test. All rights reserved.
//

import Foundation

class Request: RequestProtocol {
    var endpoint: String
    var method: RequestMethod?
    var headers: HeadersDict?
    var parameters: JSON?

    init(method: RequestMethod = .get,
         endpoint: String = "",
         params: JSON? = nil) {

        self.method = method
        self.endpoint = endpoint
        self.parameters = ServerConfig.addRequiredParemeters(params) 
    }
 }
