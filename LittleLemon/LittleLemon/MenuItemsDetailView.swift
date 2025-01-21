//
//  MenuItemsDetailView.swift
//  LittleLemon
//
//  
//

import SwiftUI

struct MenuItemsDetailView: View {
    
    let menuItem: MenuItem
    
    
    var image: String {
        if menuItem.menuCategory == .dessert {
            return "dessert"
        } else if menuItem.menuCategory == .drink {
            return "drink"
        } else if menuItem.menuCategory == .food {
            return "food"
        } else {
            return "default"
        }
    }
    
    var body: some View {
        
        VStack{
            ScrollView {
                Text(menuItem.title)
                    .font(.title)
                    .fontWeight(.bold)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding()
                
                
                Image(image)
                    .resizable()
                    .frame(width: 300, height: 200)
                    .padding()
                
                Text("Price:")
                    .fontWeight(.bold)
                Text(String(format: "%.2f€\n", menuItem.price))
                
                Text("Ordered:")
                    .fontWeight(.bold)
                Text("\(menuItem.ordersCount)\n")
                
                Text("Ingredients:")
                    .fontWeight(.bold)
                ForEach(menuItem.ingredients, id: \.self) {
                    ingredient in
                    Text(ingredient.rawValue)
                }
            }
        }
    }
}


#Preview {
    MenuItemsDetailView(menuItem: mockDataFoods[3])
}
