//
//  MenuItemsTests.swift
//
//
//  
//

import XCTest
@testable import LittleLemon

class MenuItemTests: XCTestCase {
    
    func testMenuItemTitle() {
        let menuItem = MenuItem(price: 4.5, title: "Test", menuCategory: .food, ordersCount: 3, ingredients: [.Chicken, .Lettuce, .Carrot])
        XCTAssertEqual(menuItem.title, "Test")
    }
    
    func testMenuItemIngredients() {
        let ingredients: [Ingredient] = [.Chicken, .Lettuce, .Carrot]
        let menuItem = MenuItem(price: 4.5, title: "Test", menuCategory: .food, ordersCount: 3, ingredients: ingredients)
        XCTAssertEqual(menuItem.ingredients, ingredients)
    }
    
    
}
