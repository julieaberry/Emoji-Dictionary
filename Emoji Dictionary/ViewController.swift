//
//  ViewController.swift
//  Emoji Dictionary
//
//  Created by Julie Berry on 1/29/17.
//  Copyright © 2017 Julie Berry. All rights reserved.
//

import UIKit
// Set up protocol by adding UITableView things here
class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    @IBOutlet weak var tableView: UITableView!
    
    
    var emojis = ["😀", "☺️", "😍", "🤡", "🤑", "😱","🤧", "😵"]
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Set dataSource and delegate to self inside viewDidLoad
        tableView.dataSource = self
        tableView.delegate = self
    }
    
    
    
    
    // Add required Table View protocols
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojis.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = emojis[indexPath.row]
        return cell
    }
    
    
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

