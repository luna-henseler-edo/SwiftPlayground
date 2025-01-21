//
//  MenuViewModel.swift
//  LittleLemon
//
//  
//

import Foundation
import SwiftUI

protocol MenuItemProtocol {
    var id: UUID { get }
    var price: Double { get }
    var title: String { get }
    var menuCategory: Category { get }
    var ordersCount: Int { get  set}
    var ingredients: [Ingredient] { get set }
    
}

class MenuViewModel: ObservableObject {
    
}
