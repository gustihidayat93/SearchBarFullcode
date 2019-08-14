//
//  HomeViewController.swift
//  SearchBar
//
//  Created by Ari Munandar on 08/08/19.
//  Copyright © 2019 Gusti Hidayat. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var homeTableView: UITableView!
    @IBOutlet weak var searchBar: UISearchBar!
    
    let negara = ["argentina", "amerika","austria", "australia", "brazil", "bolivia", "costarica", "cuba", "china", "chile","dermak", "dominika", "dubai", "ekuador", "finlandia", "filipina", "honduras", "indonesia","inggris", "italia", "pakistan", "polandia", "rusia", "rumania"]
    
    var searchCountry = [String]()
    var searching = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        homeTableView.delegate = self
        homeTableView.dataSource = self
        searchBar.delegate = self
        setupComponent()
    }
    func setupComponent() {
        homeTableView.rowHeight = UITableView.automaticDimension
        homeTableView.estimatedRowHeight = 35
        homeTableView.register(UINib(nibName: "HomeTableViewCell", bundle: nil), forCellReuseIdentifier: "cell")
        
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
extension HomeViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if searching {
            return searchCountry.count
        } else {
           return negara.count
        }
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = homeTableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? HomeTableViewCell
        
        if searching{
            cell?.negaraLabel?.text = searchCountry[indexPath.row]
        } else {
            cell?.negaraLabel?.text = negara[indexPath.row]
        }
        return cell!
    }
//    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
//        return 30
//    }
    
}
extension HomeViewController: UISearchBarDelegate {
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        searchCountry = negara.filter({$0.prefix(searchText.count) == searchText})
        searching = true
        homeTableView.reloadData()
    }
}
