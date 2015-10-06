//
//  FoodTrackerTests.swift
//  FoodTrackerTests
//
//  Created by Ann on 9/9/15.
//  Copyright © 2015 Ann. All rights reserved.
//

import XCTest
@testable import FoodTracker

class FoodTrackerTests: XCTestCase {
    
    // Mark: FoodTracker Tests
    
    // Test to confiam that Meal Initializer returns when no name or a nagite rating is provided.
    
    func testMealInitialization() {
        // Success case.
        let potentionalItem = Meal(name: "Newest name", photo: nil, rating: 5)
        XCTAssertNotNil(potentionalItem)
        
        // Failure cases.
        let noName = Meal(name: "", photo: nil, rating: 0)
        XCTAssertNil(noName, "Empty name is invalid")
        
        let badRating = Meal(name: "Really bad rating", photo: nil, rating: -1)
        XCTAssertNil(badRating, "Negative rating are invalid, be positive")
    }
}

