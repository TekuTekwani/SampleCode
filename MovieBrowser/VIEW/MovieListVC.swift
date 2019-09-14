//
//  MovieListVC.swift
//  MovieBrowser
//
//  Created by Hemant Tekwani on 9/12/19.
//  Copyright © 2019 Hemant. All rights reserved.
//

import UIKit

class MovieListVC: UIViewController{
    @IBOutlet weak var tableView: UITableView!
    var movieListViewModel: MovieListViewModel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureTableView()
    }
}

extension MovieListVC: UITableViewDataSource{
    func configureTableView(){
        tableView.dataSource = self
        let nib = UINib(nibName: MovieCell.uniqueId, bundle: Bundle.main)
        tableView.register(nib, forCellReuseIdentifier: MovieCell.uniqueId)
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return  movieListViewModel.cellModels.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: MovieCell.uniqueId, for: indexPath)
            as? MovieCell else{
                fatalError("MovieCell not found")
        }
        cell.configure(cellModel: movieListViewModel.cellModels[indexPath.row])
        return cell
    }
}
