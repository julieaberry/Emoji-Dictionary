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
    
    
    //var emoji = "NO EMOJI"
    
    
    var emojis : [Emoji] = []
    // moveSegue

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Set dataSource and delegate to self inside viewDidLoad
        tableView.dataSource = self
        tableView.delegate = self
        // calling the array of emojis
        emojis = makeEmojiArray()
    }
    
    
    
    
    // Add required Table View protocols
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojis.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        let emoji = emojis[indexPath.row]
        //selecting the attribute that will show up on the table row
        cell.textLabel?.text = emoji.stringEmoji
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
        defVC.emoji = sender as! Emoji
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func makeEmojiArray() -> [Emoji] {
        let emoji1 = Emoji()
        emoji1.stringEmoji = "😀"
        emoji1.definition = "Grin"
        emoji1.category = "Smileys"
        emoji1.birthYear = 2010
        
        let emoji2 = Emoji()
        emoji2.stringEmoji = "🐴"
        emoji2.definition = "Horse"
        emoji2.category = "Animals"
        emoji2.birthYear = 2011
        
        let emoji3 = Emoji()
        emoji3.stringEmoji = "🍺"
        emoji3.definition = "Have a beer!"
        emoji3.category = "Food"
        emoji3.birthYear = 2012
        
        let emoji4 = Emoji()
        emoji4.stringEmoji = "🏌️‍♀️"
        emoji4.definition = "Wonmen's Golf"
        emoji4.category = "Activity"
        emoji4.birthYear = 2013
        
        let emoji5 = Emoji()
        emoji5.stringEmoji = "⛵️"
        emoji5.definition = "Let's go Sailing!"
        emoji5.category = "Travel"
        emoji5.birthYear = 2014
        
        let emoji6 = Emoji()
        emoji6.stringEmoji = "⌚️"
        emoji6.definition = "Apple Watch"
        emoji6.category = "Objects"
        emoji6.birthYear = 2015
        
        let emoji7 = Emoji()
        emoji7.stringEmoji = "🀄️"
        emoji7.definition = "Red Dragon Mahjong tile"
        emoji7.category = "Symbols"
        emoji7.birthYear = 2016
        
        return [emoji1, emoji2, emoji3, emoji4, emoji5, emoji6, emoji7]
    }


}

