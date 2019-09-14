//
//  MockURLSessionDataTask.swift
//  MovieBrowserTests
//
//  Created by Hemant Tekwani on 9/12/19.
//  Copyright © 2019 Hemant. All rights reserved.
//

import Foundation

@testable import MovieBrowser

class MockURLSessionDataTask: URLSessionDataTaskProtocol{
    var resumeCalled = false
    func resume() {
        resumeCalled = true
    }
}
