//
//  Home2ViewController.swift
//  SearchBar
//
//  Created by Ari Munandar on 08/08/19.
//  Copyright © 2019 Gusti Hidayat. All rights reserved.
//

import UIKit

class Home2ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var searchBar2: UISearchBar!
    
    var animalArray = [Animal]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setupComponentTV()
        searchBar2.delegate = self as? UISearchBarDelegate
    }
    private func setUpAnimal() {
        animalArray.append(Animal(name: "<#T##String#>", category: .cat))
    }
    
    func setupComponentTV() {
        tableView.rowHeight = UITableView.automaticDimension
        tableView.estimatedRowHeight = 150
        tableView.register(UINib(nibName: "Home2TableViewCell", bundle: nil), forCellReuseIdentifier: "cell2")
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
extension Home2ViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell2", for: indexPath)
        return cell
    }
    
    
    
}
class Animal {
    let name: String
    let category: AnimalType
    
    init(name: String, category: AnimalType) {
        self.name = name
        self.category = category
    }
}

enum AnimalType: String {
    case cat = "Cat"
    case dog = "Dog"
}
