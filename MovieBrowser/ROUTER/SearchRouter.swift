//
//  SearchRouter.swift
//  MovieBrowser
//
//  Created by Hemant Tekwani on 9/12/19.
//  Copyright © 2019 Hemant. All rights reserved.
//

import UIKit

enum SearchRouter{
    case toMovieList((UIViewController, [Movie]))
}

extension SearchRouter: Router{
    func go() {
        switch self {
        case let .toMovieList((fromVC, movies)):
            guard let movieListVC = fromVC.storyboard?.instantiateViewController(withIdentifier: MovieListVC.storyboardId) as? MovieListVC else{
                return
            }
            movieListVC.movieListViewModel = MovieListViewModel(movies: movies)
            fromVC.navigationController?.pushViewController(movieListVC, animated: true)
        }
    }
}
