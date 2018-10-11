//
//  AboutViewController.swift
//  BullsEye
//
//  Created by Jeet Parte on 10/10/18.
//  Copyright © 2018 Jeet Parte. All rights reserved.
//

import UIKit
import WebKit

class AboutViewController: UIViewController {
    @IBOutlet weak var webView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        guard let htmlPath = Bundle.main.path(forResource: "BullsEye", ofType: "html") else {
            return
        }
        let url = URL(fileURLWithPath: htmlPath)
        let request = URLRequest(url: url)
        webView.load(request)
    }
    
    @IBAction func close() {
        dismiss(animated: true, completion: nil)
    }
}
