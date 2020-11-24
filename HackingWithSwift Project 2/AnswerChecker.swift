//
//  AnswerChecker.swift
//  HackingWithSwift Project 2
//
//  Created by Константин Кек on 22.11.2020.
//

import Foundation

class AnswerChecker {
    
    func checkAnswer(from button: String, with title: String) -> Bool {
        var updatedButton: String {
            return button.count < 3 ? button.uppercased() : button.firstCapitalized
        }
        
        let splitedTitle = title.split(separator: " ")
        if splitedTitle[0] == updatedButton {
            return true
        } else {
            return false
        }
    }
}
