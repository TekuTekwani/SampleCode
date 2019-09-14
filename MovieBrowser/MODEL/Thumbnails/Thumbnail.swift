//
//  Thumbnail.swift
//  MovieBrowser
//
//  Created by Hemant Tekwani on 9/13/19.
//  Copyright © 2019 Hemant. All rights reserved.
//

import Foundation

struct Thumbnail{
    let url: URL
    let uniqueName: String
    
    init(url: URL, uniqueName: String){
        self.url = url
        self.uniqueName = uniqueName
    }
}
