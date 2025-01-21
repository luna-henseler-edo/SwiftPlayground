//
//  Ingredients.swift
//  LittleLemon
//
// 
//
import Foundation

enum Category: String, CaseIterable {
    case food = "Food"
    case drink = "Drink"
    case dessert = "Dessert"
}

enum Ingredient: String{
    case Spinach = "Spinach"
    case Broccoli = "Broccoli"
    case Carrot = "Carrot"
    case Pasta = "Pasta"
    case TomatoSauce = "Tomato Sauce"
    case Beef = "Beef"
    case Chicken = "Chicken"
    case Rice = "Rice"
    case Lettuce = "Lettuce"
    case Cheese = "Cheese"
    case Bread = "Bread"
    case Tuna = "Tuna"
    case Milk = "Milk"
    case Sugar = "Sugar"
    case Flour = "Flour"
    case Egg = "Egg"
    case Butter = "Butter"
    case Cocoa = "Cocoa"
    case Water = "Water"
    case Lemon = "Lemon"
    case Apple = "Apple"
}


struct MenuItem: MenuItemProtocol, Identifiable {
    let id = UUID()
    let price: Double
    let title: String
    let menuCategory: Category
    var ordersCount: Int
    var ingredients: [Ingredient] = []
    
}

var mockDataFoods: [MenuItem] {
    return [
            MenuItem(price: 12.5, title: "Spaghetti Bolognese", menuCategory: .food, ordersCount: 120, ingredients: [.Pasta, .TomatoSauce, .Beef]),
            MenuItem(price: 10.0, title: "Chicken Salad", menuCategory: .food, ordersCount: 90, ingredients: [.Chicken, .Lettuce, .Carrot]),
            MenuItem(price: 15.0, title: "Beef Stir Fry", menuCategory: .food, ordersCount: 70, ingredients: [.Beef, .Broccoli, .Carrot]),
            MenuItem(price: 11.0, title: "Vegetable Pasta", menuCategory: .food, ordersCount: 60, ingredients: [.Pasta, .Spinach, .TomatoSauce]),
            MenuItem(price: 8.0, title: "Cheese Sandwich", menuCategory: .food, ordersCount: 50, ingredients: [.Bread, .Cheese]),
            MenuItem(price: 9.5, title: "Tuna Salad", menuCategory: .food, ordersCount: 30, ingredients: [.Tuna, .Lettuce, .Carrot]),
            MenuItem(price: 13.0, title: "Chicken Rice Bowl", menuCategory: .food, ordersCount: 80, ingredients: [.Chicken, .Rice, .Broccoli]),
            MenuItem(price: 14.0, title: "Beef Tacos", menuCategory: .food, ordersCount: 95, ingredients: [.Beef, .Lettuce, .TomatoSauce]),
            MenuItem(price: 12.0, title: "Vegetable Stir Fry", menuCategory: .food, ordersCount: 55, ingredients: [.Broccoli, .Carrot, .Spinach]),
            MenuItem(price: 7.0, title: "Tomato Soup", menuCategory: .food, ordersCount: 45, ingredients: [.TomatoSauce, .Carrot, .Broccoli]),
            MenuItem(price: 14.5, title: "Chicken Pasta", menuCategory: .food, ordersCount: 65, ingredients: [.Pasta, .Chicken, .TomatoSauce]),
            MenuItem(price: 15.5, title: "Beef Burger", menuCategory: .food, ordersCount: 110, ingredients: [.Beef, .Bread, .Cheese]),
    ]
}

var mockDataDrinks: [MenuItem] {
    return [
        // Drinks
        MenuItem(price: 3.0, title: "Lemonade", menuCategory: .drink, ordersCount: 200, ingredients: [.Water, .Lemon, .Sugar]),
        MenuItem(price: 4.0, title: "Orange Juice", menuCategory: .drink, ordersCount: 180, ingredients: []),
        MenuItem(price: 4.0, title: "Apple Juice", menuCategory: .drink, ordersCount: 170, ingredients: []),
        MenuItem(price: 2.5, title: "Milk", menuCategory: .drink, ordersCount: 160, ingredients: [.Milk]),
        MenuItem(price: 3.5, title: "Coffee", menuCategory: .drink, ordersCount: 220, ingredients: [.Water, .Milk, .Sugar]),
        MenuItem(price: 3.0, title: "Tea", menuCategory: .drink, ordersCount: 190, ingredients: [.Water, .Lemon, .Sugar]),
        MenuItem(price: 5.0, title: "Smoothie", menuCategory: .drink, ordersCount: 140, ingredients: [.Milk, .Sugar]),
        MenuItem(price: 1.0, title: "Water", menuCategory: .drink, ordersCount: 300, ingredients: [.Water])
        ]
                 }

var mockDataDesserts: [MenuItem] {
    return [
        // Desserts
        MenuItem(price: 6.0, title: "Chocolate Cake", menuCategory: .dessert, ordersCount: 130, ingredients: [.Flour, .Sugar, .Cocoa, .Egg, .Butter]),
        MenuItem(price: 5.0, title: "Vanilla Ice Cream", menuCategory: .dessert, ordersCount: 150, ingredients: [.Milk, .Sugar, .Egg, .Butter]),
        MenuItem(price: 4.5, title: "Fruit Salad", menuCategory: .dessert, ordersCount: 90, ingredients: []),
        MenuItem(price: 6.5, title: "Brownie", menuCategory: .dessert, ordersCount: 100, ingredients: [.Flour, .Sugar, .Cocoa, .Egg, .Butter])
  ]
}
