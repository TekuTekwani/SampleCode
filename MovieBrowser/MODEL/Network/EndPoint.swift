//
//  EndPoint.swift
//  MovieBrowser
//
//  Created by Hemant Tekwani on 9/12/19.
//  Copyright © 2019 Hemant. All rights reserved.
//

import Foundation

protocol EndPoint{
    var basePath: String{get}
    var path: String{get}
}

extension EndPoint{
    var url: URL{
        let fullPath = "\(basePath)\(path)"
        return URL(string: fullPath.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed)!)!
    }
}
