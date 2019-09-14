//
//  MovieAPI+Response.swift
//  MovieBrowser
//
//  Created by Hemant Tekwani on 9/12/19.
//  Copyright © 2019 Hemant. All rights reserved.
//

import Foundation

typealias MovieAPIResponse<T> = (Either<T, MovieAPIResponseError>) -> Void

enum MovieAPIResponseError: Error{
    case networkError(String)
    case parseError
}
