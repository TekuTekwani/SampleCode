//
//  Either.swift
//  MovieBrowser
//
//  Created by Hemant Tekwani on 9/12/19.
//  Copyright © 2019 Hemant. All rights reserved.
//

import Foundation

enum Either<T1,T2>{
    case left(T1)
    case right(T2)
}
