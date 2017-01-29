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
    
    
    var emoji = "NO EMOJI"
    
    
    var emojis = ["😀", "😇", "😍", "🤡", "🤑", "😱","🤧", "😴"]
    // moveSegue

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
    
    // this is what happens when a row is tapped
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        // removes the default gray highlight
        tableView.deselectRow(at: indexPath, animated: true)
        // passes whatever emoji is tapped to the next view controller
        let emoji = emojis[indexPath.row]
        // whatever is tapped will open the next view controller
        performSegue(withIdentifier: "moveSegue", sender: emoji)
    }
    
    // this gets sender from the didSelectRowAt function
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let defVC = segue.destination as! DefinitionViewController
        defVC.emoji = sender as! String
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

