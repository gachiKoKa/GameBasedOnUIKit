//
//  FlagsGenerator.swift
//  HackingWithSwift Project 2
//
//  Created by Константин Кек on 22.11.2020.
//

import Foundation

class FlagsGenerator {
    private(set) var countries = ["estonia", "france", "germany", "ireland", "italy", "monaco", "nigeria", "poland", "russia", "spain", "uk", "us"]
    
    func getThreeFlags() -> [String] {
        countries.shuffle()
        return [countries[0], countries[1], countries[2]]
    }
}
