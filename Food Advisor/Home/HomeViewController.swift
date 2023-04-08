//
//  HomeViewController.swift
//  Food Advisor
//
//  Created by Mohamed Sayed on 07.04.23.
//

import UIKit

class HomeViewController: UIViewController {
    @IBOutlet private weak var postsTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        postsTableView.delegate = self
        postsTableView.dataSource = self
    }
}

// MARK: - Delegate

extension HomeViewController: UITableViewDelegate {}

// MARK: - Data Source

extension HomeViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let postsCell = tableView.dequeueReusableCell(withIdentifier: "postsCell", for: indexPath)
        
        return postsCell
    }
}
