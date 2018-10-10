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
    var sliderValue: Int {
        return Int(slider.value.rounded())
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        score = 0
        startNewRound()
    }
    
    func startNewRound() {
        targetValue = Int.random(in: 1...100)
        round += 1
    }
    
    private func calculateDifference() -> Int {
        return abs(targetValue - sliderValue)
    }
    
    private func addPoints(for difference: Int) -> Int {
        let points = 100 - difference
        let bonusPoints = difference == 0 ? 100 : 0
        let totalPoints = points + bonusPoints
        score += totalPoints
        return totalPoints
    }
    
    @IBAction func resetGame() {
        score = 0
        round = 0
        startNewRound()
    }
    
    @IBAction func showAlert() {
        let difference = calculateDifference()
        let points = addPoints(for: difference)
        var message = "You scored \(points) points. \n The slider value was \(sliderValue)."
        var title = ""
        func setTitle() {
            switch difference {
            case 0:
                title = "Perfect!"
            case 1...5:
                title = "Very close!"
            case 6...10:
                title = "Pretty good!"
            default:
                title = "Not even close..."
            }
        }
        setTitle()
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let action = UIAlertAction(title: "Ok", style: .default, handler: { (action) in self.startNewRound() })
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
    }
}

