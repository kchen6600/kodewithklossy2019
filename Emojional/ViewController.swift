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
        let alertController = UIAlertController(title: "We all get EMOJIonal", message: emojis[selectedEmotion!], preferredStyle: .alert)
        alertController.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
        present(alertController, animated: true, completion: nil)
        
    }
}

