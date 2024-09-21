//
//  main.swift
//  SellCell
//
//  Created by Lexi on 2024-09-16.
//

import Foundation

while true {
    
    var dayTimeMinutes = getInputWithPrompt(withPrompt: "Number of daytime minutes?",
                                            minimum: 0,
                                            maximum: nil)
    var eveningMinutes = getInputWithPrompt(withPrompt: "Number of evening minutes?",
                                            minimum: 0,
                                            maximum: nil)
    var weekendMinutes = getInputWithPrompt(withPrompt: "Number of weekend minutes?",
                                            minimum: 0,
                                            maximum: nil)
    
    let plans = calculatePlans(daytimeMinutes: dayTimeMinutes, eveningMinutes: eveningMinutes, weekendMinutes: weekendMinutes)
    
    print("Plan A costs \(String(format: "%.2f", plans.aCost))")
    print("Plan A costs \(String(format: "%.2f", plans.bCost))")
    if plans.cheapest == -1 {
        print("Plan A & B are equal")
    } else {
        print("Plan \(plans.cheapest == 0 ? "A" : "B") is cheapest")
    }
    
}
