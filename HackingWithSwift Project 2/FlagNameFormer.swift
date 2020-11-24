//
//  FlagNameFormer.swift
//  HackingWithSwift Project 2
//
//  Created by Константин Кек on 24.11.2020.
//

import Foundation

class FlagNameFormer {
    func formTitle(for string: String) -> String {
        if string.count < 3 {
            return string.uppercased()
        }
        
        return string.firstCapitalized
    }
}

extension String {
    var firstCapitalized: String { return prefix(1).capitalized + dropFirst() }
}
