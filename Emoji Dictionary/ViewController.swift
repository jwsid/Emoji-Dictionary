//
//  ViewController.swift
//  Emoji Dictionary
//
//  Created by Justin W Siddons on 5/11/17.
//  Copyright © 2017 Justin W Siddons. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    
    var emojis : [Emoji] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        tableView.dataSource = self
        tableView.delegate = self
        emojis = makeEmojiArray()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojis.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        print(indexPath.row)
        let cell = UITableViewCell()
        let emoji = emojis[indexPath.row]
        cell.textLabel?.text = emoji.stringEmoji
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let emoji = emojis[indexPath.row]
        performSegue(withIdentifier: "moveSegue", sender: emoji)
    }
    
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
        emoji1.stringEmoji = "😎"
        emoji1.birthYear = 2010
        emoji1.category = "Smiley"
        emoji1.definition = "A dude with Sunglasses."
        
        let emoji2 = Emoji()
        emoji2.stringEmoji = "🔥"
        emoji2.birthYear = 2010
        emoji2.category = "Object"
        emoji2.definition = "Lit AF."
        
        let emoji3 = Emoji()
        emoji3.stringEmoji = "😭"
        emoji3.birthYear = 2001
        emoji3.category = "Object"
        emoji3.definition = "Why do you cry?"
        
        let emoji4 = Emoji()
        emoji4.stringEmoji = "🔑"
        emoji4.birthYear = 2010
        emoji4.category = "Object"
        emoji4.definition = "Major Key Alert"
        
        let emoji5 = Emoji()
        emoji5.stringEmoji = "🐢"
        emoji5.birthYear = 2007
        emoji5.category = "Object"
        emoji5.definition = "Ninja Turtle."
        
        let emoji6 = Emoji()
        emoji6.stringEmoji = "🙌"
        emoji6.birthYear = 2005
        emoji6.category = "Object"
        emoji6.definition = "Major Key Alert"
        
        let emoji7 = Emoji()
        emoji7.stringEmoji = "❤️"
        emoji7.birthYear = 2011
        emoji7.category = "Object"
        emoji7.definition = "I love you."
        
        return [emoji1, emoji2, emoji3, emoji4, emoji5, emoji6, emoji7]
        
    }
    
    
}

