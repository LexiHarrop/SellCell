//
//  calculatePlans.swift
//  SellCell
//
//  Created by Lexi on 2024-09-20.
//

import Foundation

func calculatePlans(daytimeMinutes: Int, eveningMinutes: Int, weekendMinutes: Int) -> Plan {
    
    var a = 0
        a += (daytimeMinutes-100 < 0 ? 0 : daytimeMinutes-100) * 25
        a += 15 * eveningMinutes
        a += 20 * weekendMinutes
    let aDollars: Double = Double(a)/100

    var b = 0
        b += (daytimeMinutes-250<0 ? 0 : daytimeMinutes-250) * 45
        b += 35 * eveningMinutes
        b += 25 * weekendMinutes
    let bDollars: Double = Double(b)/100

    return Plan(aCost: aDollars, bCost: bDollars, cheapest: a<b ? 0 : a==b ? -1 : 1)
    
}


