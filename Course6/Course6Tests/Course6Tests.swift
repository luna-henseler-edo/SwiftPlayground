//
//  Course6Tests.swift
//  Course6Tests
//
//  Created by luna.henseler on 15/1/25.
//

import XCTest

@testable import Course6

final class Course6Tests: XCTestCase {
    
    
    func test_calculateTotal_salesTaxTwentyPercent() {
        let items = [
            CheckoutItem(name: "Fish and Chips", price: 625),
            CheckoutItem(name: "Bottled Water", price: 100),
            CheckoutItem(name: "Soda", price: 150),
            CheckoutItem(name: "Spaguetti", price: 500)]
        let taxPercentage = 20
        
        let totalToPay = calculateTotal(items: items, localTaxPercent: taxPercentage)
        
        XCTAssertEqual(totalToPay, 1650)
    }
    
}
