//
//  MockURLSession.swift
//  MovieBrowserTests
//
//  Created by Hemant Tekwani on 9/12/19.
//  Copyright © 2019 Hemant. All rights reserved.
//

import Foundation

@testable import MovieBrowser

class MockURLSession: URLSessionProtocol{
    var lastURLCalled: URL?
    private var mockDataTask : MockURLSessionDataTask
    init(mockDataTask: MockURLSessionDataTask) {
        self.mockDataTask = mockDataTask
    }
    
    func dataTask(with request: URLRequest, completionHandler: @escaping (Data?, URLResponse?, Error?) -> Void) -> URLSessionDataTaskProtocol {
        lastURLCalled = request.url
        
        switch MovieAPITestEnum(rawValue: request.url!.absoluteString)!.networkResponse {
        case let .left(data):
            completionHandler(data, nil, nil)
        case let .right(error):
            completionHandler(nil, nil, error)
        }
        
        return mockDataTask
    }
}


