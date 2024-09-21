//
//  SellCellTests.swift
//  SellCellTests
//
//  Created by Lexi on 2024-09-20.
//

import Testing

struct SellCellTests {

    @Test func calculatePlansTest() async throws {
        
        //
        
        var result = calculatePlans(daytimeMinutes: 300, eveningMinutes: 145, weekendMinutes: 50)

        #expect(result.aCost == 81.75 && result.bCost == 85.75 && result.cheapest == 0)
        
        //
        
        result = calculatePlans(daytimeMinutes: 210, eveningMinutes: 110, weekendMinutes: 70)

        #expect(result.aCost == 58.00 && result.bCost == 56.00 && result.cheapest == 1)
        
        //
        
        result = calculatePlans(daytimeMinutes: 210, eveningMinutes: 130, weekendMinutes: 30)

        #expect(result.aCost == 53.00 && result.bCost == 53.00 && result.cheapest == -1)
        
        //
        
        result = calculatePlans(daytimeMinutes: 75, eveningMinutes: 30, weekendMinutes: 50)

        #expect(result.aCost == 14.50 && result.bCost == 23.00 && result.cheapest == 0)
        
        //
        
    }

}
