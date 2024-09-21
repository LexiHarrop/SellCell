//
//  getInput.swift
//  SellCell
//
//  Created by Lexi on 2024-09-20.
//

import Foundation

func getInputWithPrompt(withPrompt prompt: String, minimum: Int?, maximum: Int?) -> Int {
        
    var input: Int
    
    while true {
        
        print(prompt)
        
        if let i = getInput() {
            
            if i < minimum ?? 0 {
                continue
            }
            
            if let max = maximum {
                if i > max {
                    continue
                }
            }
            
            input = i
            
        } else {
            continue
        }
        
        break
        
    }
    
    return input
    
}

func getInput() -> Int? {
    
    guard let givenInput = readLine() else {
        return nil
    }
    
    guard let givenInteger = Int(givenInput) else {
        return nil
    }
    
    return givenInteger
    
}
