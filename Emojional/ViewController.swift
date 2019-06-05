//
//  ViewController.swift
//  Emojional
//
//  Created by Karen Chen on 6/3/19.
//  Copyright © 2019 Karen Chen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let emojis = ["😭": "ugly crying", "😁": "happy"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func cryingButtonTapped(_ sender: UIButton) {
    }
    
    @IBAction func happyButtonTapped(_ sender: UIButton) {
    }
    
    @IBAction func showMessage(sender: UIButton!) {
        
        let selectedEmotion = sender.titleLabel?.text

        // when user clicks the crying emoji button, show crying
        // when user clicks the happy emoji button, show happy
        let customMessages = ["ugly crying": ["cheer up buttercup", "take a deep breathe", "do you need to talk?"], "happy": ["you ROCK!", "ohhhh yeah!", "you go girl!"]]
        var messageArr = customMessages[emojis[selectedEmotion!]!]
        var arrLen = messageArr!.count - 1
        var rand = Int.random(in: 0 ... arrLen)
        let emojiMessage = customMessages[emojis[selectedEmotion!]!]?[rand]

        let alertController = UIAlertController(title: "We all get EMOJIonal", message: emojiMessage, preferredStyle: .alert)
        alertController.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
        present(alertController, animated: true, completion: nil)
        
    }
}

