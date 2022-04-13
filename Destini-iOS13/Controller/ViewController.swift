//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    let stories = [
        Story(title: "You see a fork in the road", choice1: "Take a left", choice2: "Take a right"),
        Story(title: "You see a tiger", choice1: "Shout for help", choice2: "Play dead"),
        Story(title: "You find a treasure chest.", choice1: "Open it", choice2: "Check for traps")
    ]
    override func viewDidLoad() {
        super.viewDidLoad()
        storyLabel.text = "You see a fork in the road."
        choice1Button.setTitle("Take a left", for: .normal)
        choice2Button.setTitle("Take a right", for: .normal)
    }

    @IBAction func choiceMade(_ sender: UIButton) {
        if sender.currentTitle == "Take a left" {
            storyLabel.text = "You see a tiger"
            choice1Button.setTitle("Shout for help", for: .normal)
            choice2Button.setTitle("Play dead", for: .normal)
        } else if sender.currentTitle == "Take a right"{
            storyLabel.text = "You find a treasure chest"
            choice1Button.setTitle("Open it", for: .normal)
            choice2Button.setTitle("Check for traps", for: .normal)
        }
    }
    
}

