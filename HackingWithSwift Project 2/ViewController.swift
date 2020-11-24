//
//  ViewController.swift
//  HackingWithSwift Project 2
//
//  Created by Константин Кек on 21.11.2020.
//

import UIKit

class ViewController: UIViewController {
    var flagGenerator = FlagsGenerator()
    var flagTitleFormer = FlagNameFormer()
    var answerChecker = AnswerChecker()
    
    lazy var threeRandomFlags = flagGenerator.getThreeFlags()
    
    var score = 0

    @IBOutlet var buttons: [UIButton]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        title = flagTitleFormer.formTitle(for: threeRandomFlags.randomElement()!) + " " + String(score)
        updateView(with: score)
    }
    
    @IBAction func buttonDidTapped(_ sender: UIButton) {
        let buttonIndex = buttons.firstIndex(of: sender)!
        if answerChecker.checkAnswer(from: threeRandomFlags[buttonIndex], with: title!) == true {
            score += 1
            if score > 0, score % 10 == 0 {
                let alertController = UIAlertController(title: "Congratz!", message: "You have scored \(score) points", preferredStyle: .alert)
                alertController.addAction(UIAlertAction(title: "Continue", style: .cancel))
                alertController.addAction(UIAlertAction(title: "New Game", style: .default) {_ in
                    self.updateView(with: 0)
                })
                present(alertController, animated: true)
            }
            updateView(with: score)
        } else {
            score -= 1
            updateView(with: score)
        }
    }
    
    func updateButtons(with collection: [UIButton], and flags: [String]) {
        for (button, flag) in zip(collection, flags) {
            button.setBackgroundImage(UIImage(named: flag), for: .normal)
            button.layer.borderWidth = 1
        }
    }
    
    func updateView(with score: Int) {
        threeRandomFlags = flagGenerator.getThreeFlags()
        self.title = flagTitleFormer.formTitle(for: threeRandomFlags.randomElement()!) + " " + String(score)
        updateButtons(with: buttons, and: threeRandomFlags)
    }
    
}

