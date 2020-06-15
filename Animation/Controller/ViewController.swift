//
//  ViewController.swift
//  Animation
//
//  Created by Виталий Сосин on 15.06.2020.
//  Copyright © 2020 Vitalii Sosin. All rights reserved.
//

import UIKit
import Spring

class ViewController: UIViewController {
    @IBOutlet weak var screenViewOutlet: UIView!
    @IBOutlet weak var buttonOutlet: UIButton!
    
    @IBOutlet weak var nameAnimationLabel: UILabel!
    @IBOutlet weak var durationAnimationLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        roundsCorners()
    }
    @IBAction func buttonAction() {
    }
    
    
    private func roundsCorners() {
        screenViewOutlet.layer.cornerRadius = screenViewOutlet.frame.height / 15
        buttonOutlet.layer.cornerRadius = buttonOutlet.frame.height / 5
    }

}
