//
//  ViewController.swift
//  BullsEye
//
//  Created by Jeet Parte on 10/8/18.
//  Copyright © 2018 Jeet Parte. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func showAlert() {
        let alert = UIAlertController(title: "Hello, World!", message: "This is my first iOS 12 app!", preferredStyle: .alert)
        
        let action = UIAlertAction(title: "Awesome", style: .default, handler: nil)
        
        alert.addAction(action)
        
        present(alert, animated: true, completion: nil)
    }
    
    @IBAction func knockKnock() {
        let alert = UIAlertController(title: "Knock knock!", message: "Who's there?", preferredStyle: .actionSheet)
        
        let action = UIAlertAction(title: "A new friend", style: .cancel, handler: nil)
        
        alert.addAction(action)
        
        present(alert, animated: true, completion: nil)
    }
}

