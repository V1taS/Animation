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
    
    @IBOutlet weak var screenViewOutlet: SpringView!
    @IBOutlet weak var buttonOutlet: UIButton!
    
    @IBOutlet weak var nameAnimationLabel: UILabel!
    @IBOutlet weak var durationAnimationLabel: UILabel!
    
    @IBOutlet weak var currentNumberOutlet: UILabel!
    
    let animations = Model.getListAnimation()
    var index = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setTitleToLabel()
        setTitleToButton()
        setColor()
        
        currentNumber()
        retrievesTheName()
        roundsCorners()
    }
    
    @IBAction func buttonAction() {
        index += 1
        setTitleToLabel()
        setTitleToButton()
        retrievesTheName()
        currentNumber()
    }
    
    private func roundsCorners() {
        screenViewOutlet.layer.cornerRadius = screenViewOutlet.frame.height / 15
        buttonOutlet.layer.cornerRadius = buttonOutlet.frame.height / 5
    }
    
    private func setTitleToLabel() {
        nameAnimationLabel.text = animations[index].name
        durationAnimationLabel.text = animations[index].curve
    }
    
    private func setTitleToButton() {
        resetCounter()
        buttonOutlet.setTitle(animations[index + 1].name, for: .normal)
    }
    
    private func retrievesTheName() {
        screenViewOutlet.animation = animations[index].name
        screenViewOutlet.curve = animations[index].curve
        screenViewOutlet.force = CGFloat(animations[index].force)
        screenViewOutlet.duration = CGFloat(animations[index].duration)
        screenViewOutlet.animate()
    }
    
    private func resetCounter() {
        if animations.count == index + 1 {
            index = 0
        }
    }
    
    private func setColor() {
        nameAnimationLabel.textColor = .systemRed
        durationAnimationLabel.textColor = .systemRed
    }
    
    private func currentNumber() {
        currentNumberOutlet.text = "\(index + 1) из \(animations.count - 1)"
    }
}
