//
//  URLSessionDataTaskProtocol.swift
//  MovieBrowserTests
//
//  Created by Hemant Tekwani on 9/12/19.
//  Copyright © 2019 Hemant. All rights reserved.
//

import Foundation

//This will help to mock URLSessionDataTask in Unit Testing
protocol URLSessionDataTaskProtocol{
    func resume()
}

extension URLSessionDataTask: URLSessionDataTaskProtocol{
    
}
