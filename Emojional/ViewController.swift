//
//  ViewController.swift
//  Emojional
//
//  Created by Karen Chen on 6/3/19.
//  Copyright © 2019 Karen Chen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func cryingButtonTapped(_ sender: UIButton) {
    }
    
    @IBAction func happyButtonTapped(_ sender: UIButton) {
    }
    
    @IBAction func showMessage(sender: UIButton!) {
        
        let emotion = sender.currentTitle!
        switch emotion {
        case "😭":
            // when user clicks the crying emoji button, show calming message
            let alertController = UIAlertController(title: "We all get EMOJIonal", message: "Take a deep breath", preferredStyle: .alert)
            alertController.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
            present(alertController, animated: true, completion: nil)
        case "😄":
            // when user clicks the happy emoji button, show encouraging message
            let alertController = UIAlertController(title: "We all get EMOJIonal", message: "YOU ROCK", preferredStyle: .alert)
            alertController.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
            present(alertController, animated: true, completion: nil)
        default: break
        }
        
    }
}

