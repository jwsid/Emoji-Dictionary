//
//  DefinitionViewController.swift
//  Emoji Dictionary
//
//  Created by Justin W Siddons on 5/11/17.
//  Copyright © 2017 Justin W Siddons. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {

    @IBOutlet weak var definitionLabel: UILabel!
    @IBOutlet weak var emojiLabel: UILabel!
    
    var emoji = "No Emoji"

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        emojiLabel.text = emoji
        
        if emoji == "😎" {
            definitionLabel.text = "Sunglasses Person"
        }
        if emoji == "🔥" {
            definitionLabel.text = "Lit AF!"
        }
        if emoji == "😭" {
            definitionLabel.text = "Why do you cry?"
        }
        if emoji == "🔑" {
            definitionLabel.text = "Major Key Alert!"
        }
        if emoji == "🐢" {
            definitionLabel.text = "Go ninja, Go ninja!"
        }
        if emoji == "🙌" {
            definitionLabel.text = "Bless up yourself."
        }
        if emoji == "❤️" {
            definitionLabel.text = "I love you."
        }
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
