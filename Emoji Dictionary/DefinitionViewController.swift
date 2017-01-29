//
//  DefinitionViewController.swift
//  Emoji Dictionary
//
//  Created by Julie Berry on 1/29/17.
//  Copyright © 2017 Julie Berry. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {
    
    var emoji = "NO EMOJI"
    
    @IBOutlet weak var emojiLabel: UILabel!
    
    @IBOutlet weak var definitionLabel: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        emojiLabel.text = emoji
        
        if emoji == "😀" {
            definitionLabel.text = "grinning face"
        }
        else if emoji == "😇" {
            definitionLabel.text = "smiling face with halo"
        }
        else if emoji == "😍" {
            definitionLabel.text = "smiling face with heart-shaped eyes"
        }
        else if emoji == "🤡" {
            definitionLabel.text = "clown face"
        }
        else if emoji == "🤑" {
            definitionLabel.text = "money-mouth facee"
        }
        else if emoji == "😱" {
            definitionLabel.text = "face screaming in fear"
        }
        else if emoji == "🤧" {
            definitionLabel.text = "sneezing face"
        }
        else if emoji == "😴" {
            definitionLabel.text = "sleeping face"
        }
        else {
            definitionLabel.text = "definition not found"
        }
        
        
    }

    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    

}
