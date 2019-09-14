//
//  MovieListViewModel.swift
//  MovieBrowser
//
//  Created by Hemant Tekwani on 9/12/19.
//  Copyright © 2019 Hemant. All rights reserved.
//

class MovieListViewModel{
    private var movies: [Movie]
    var cellModels: [MovieCellModel]
    
    init(movies: [Movie]){
        self.movies = movies
        cellModels = movies.map{MovieCellModel(movie: $0)}
    }
}
