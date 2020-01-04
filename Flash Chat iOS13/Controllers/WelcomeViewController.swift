//
//  WelcomeViewController.swift
//  Flash Chat iOS13
//
//  Created by Михаил Емельянов on 21/11/2019.
//  Copyright © 2019 Михаил Емельянов. All rights reserved.
// https://firebase.google.com/docs/auth/ios/password-auth?authuser=0

import UIKit

class WelcomeViewController: UIViewController {
    
    @IBOutlet weak var titleLabel: UILabel!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.isNavigationBarHidden = true
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.isNavigationBarHidden = false
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Create a loop for animation manually
        titleLabel.text = ""
        var charIndex = 0.0 // delay
        let titleText = K.appName
        for letter in titleText {
            
            Timer.scheduledTimer(withTimeInterval: 0.1 * charIndex, repeats: false) { (timer) in
                self.titleLabel.text?.append(letter)
            }
            charIndex += 1
        }
        
        
    }
    
    
}


