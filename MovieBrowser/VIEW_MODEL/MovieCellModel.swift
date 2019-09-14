//
//  MovieCellModel.swift
//  MovieBrowser
//
//  Created by Hemant Tekwani on 9/12/19.
//  Copyright © 2019 Hemant. All rights reserved.
//

import UIKit

struct MovieCellModel{
    let name: String
    let thumbnail: Thumbnail?
    
    init(movie: Movie){
        self.name = movie.title
        if let imdbId = movie.imdbID,
            let posterURLString = movie.poster,
            let posterURL = URL(string: posterURLString){
            self.thumbnail = Thumbnail(url: posterURL, uniqueName: imdbId)
        }else{
            self.thumbnail = nil
        }
    }
}
