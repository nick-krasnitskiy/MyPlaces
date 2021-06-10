//
//  MainViewController.swift
//  MyPlaces
//
//  Created by Nick Krasnitskiy on 10.06.2021.
//

import UIKit

class MainViewController: UITableViewController {

    let restaurantNames = ["Union Jack", "Samurai", "Spicy Band", "Gorky Beer", "Kebab House",
                           "Lampust", "Coffee Cake", "Butch & Dutch", "Rock-Bar", "Nebar",
                           "Biblioteca", "NIKO 1560", "Freakadely", "Picasso", "Mr.Choo"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return restaurantNames.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.textLabel?.text = restaurantNames[indexPath.row]
        return cell
    }
}
