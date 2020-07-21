//
//  WebsitesTableViewController.swift
//  Easy Browser
//
//  Created by Sasha Evtushenko on 7/19/20.
//  Copyright © 2020 Sasha Evtushenko. All rights reserved.
//

import UIKit

class WebsitesTableViewController: UITableViewController {

    var websites = ["apple.com", "hackingwithswift.com"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Websites"
        navigationController?.navigationBar.prefersLargeTitles = true
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return websites.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "WebsiteCell", for: indexPath)
        cell.textLabel?.text = websites[indexPath.row]
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let destinationViewController = storyboard?.instantiateViewController(withIdentifier: "WebView") as! ViewController
        destinationViewController.website = websites[indexPath.row]
        navigationController?.pushViewController(destinationViewController, animated: true)
    }
}
