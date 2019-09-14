//
//  MovieSearch.swift
//  MovieBrowser
//
//  Created by Hemant Tekwani on 9/12/19.
//  Copyright © 2019 Hemant. All rights reserved.
//

import Foundation

enum MovieResultResponse: String, Codable{
    case isTrue = "True"
    case isFalse = "False"
}

struct MovieSearch: Codable{
    let movies: [Movie]?
    let response: MovieResultResponse
    let error: String?
    let totalResults: String?
    
    enum CodingKeys: String, CodingKey{
        case movies = "Search"
        case response = "Response"
        case error = "Error"
        case totalResults = "totalResults"
    }
}
