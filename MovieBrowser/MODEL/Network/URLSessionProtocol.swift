//
//  Networking+Testable.swift
//  MovieBrowser
//
//  Created by Hemant Tekwani on 9/12/19.
//  Copyright © 2019 Hemant. All rights reserved.
//

import Foundation

///This will help to mock URLSession in Unit Testing
protocol URLSessionProtocol{
    func dataTask(with request: URLRequest, completionHandler: @escaping (Data?, URLResponse?, Error?) -> Swift.Void) -> URLSessionDataTaskProtocol
}

extension URLSession : URLSessionProtocol{
    func dataTask(with request: URLRequest, completionHandler: @escaping (Data?, URLResponse?, Error?) -> Void) -> URLSessionDataTaskProtocol {
        return dataTask(with: request, completionHandler: completionHandler) as URLSessionDataTask
    }
}
