//
//  ViewController.swift
//  BullsEye
//
//  Created by Jeet Parte on 10/8/18.
//  Copyright © 2018 Jeet Parte. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var targetLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var roundLabel: UILabel!
    
    var targetValue = 0 {
        didSet {
            targetLabel.text = String(targetValue)
        }
    }
    var round = 0 {
        didSet {
            roundLabel.text = String(round)
        }
    }
    var score = 0 {
        didSet {
            scoreLabel.text = String(score)
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        startNewRound()
    }
    
    func startNewRound() {
        targetValue = Int.random(in: 1...100)
        round += 1
    }
    
    @IBAction func showAlert() {
        let sliderValue = Int(slider.value.rounded())
        let message = "The value of the slider is: \(sliderValue)" +
        "\nThe value of the target is: \(targetValue)"
        let alert = UIAlertController(title: "Hello, World!", message: message, preferredStyle: .alert)
        
        let action = UIAlertAction(title: "Ok", style: .default, handler: { (action) in self.startNewRound() })
        
        alert.addAction(action)
        
        present(alert, animated: true, completion: nil)
    }
}

