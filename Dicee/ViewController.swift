//
//  ViewController.swift
//  Dicee
//
//  Created by anthony monfort on 10/5/18.
//  Copyright © 2018 Anthony Monfort. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // IBOutlet variables
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    
    // variables
    let diceArray = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]
    var randomDiceIndex1 : Int = 0
    var randomDiceIndex2 : Int = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateDiceImages()
    }
    
    // function updates dice faces with a randomized number in a range
    func updateDiceImages() {
        
        randomDiceIndex1 = Int.random(in: 0 ... 5)
        randomDiceIndex2 = Int.random(in: 0 ... 5)
        
        diceImageView1.image = UIImage(named: diceArray[randomDiceIndex1])
        diceImageView2.image = UIImage(named: diceArray[randomDiceIndex2])
        
    }
    // IBAction function updates the dice images
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        updateDiceImages()
    }
    
    
    
    // motionShake method updates the dice images
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        if motion == .motionShake {
            updateDiceImages()
        }
    }
    
}


