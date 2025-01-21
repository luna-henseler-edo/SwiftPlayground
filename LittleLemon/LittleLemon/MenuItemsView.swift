//
//  MenuItemsView.swift
//  LittleLemon
//
//  
//


import SwiftUI

struct MenuCategoryView: View {
    let title: String
    let items: [MenuItem]
    let layout: [GridItem]
    let imageName: String
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(title)
                .font(.headline)
                .frame(maxWidth: .infinity, alignment: .leading)
            
            LazyVGrid(columns: layout, spacing: 5) {
                ForEach(items) { item in
                    NavigationLink(destination: MenuItemsDetailView(menuItem: item)) {
                        VStack{
                            Image(imageName)
                                .resizable()
                                .frame(width: 110, height: 100)
                            Text(item.menuCategory.rawValue)
                        }
                    }
                }
            }
        }
    }
}


struct MenuItemsView: View {
    
    @ObservedObject private var viewModel = MenuViewModel()
    
    @State private var isScreenPresented = false
    
    @State var selectedSortOption = SortOption.popularity
    @State var selectedCategories = [Category.food]
    
    let photoFood = "food"
    let photoDrink = "drink"
    let photoDessert = "dessert"
    
    let layout = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var body: some View {
        
        NavigationStack {
            VStack(alignment: .leading) {
                ScrollView{
                    MenuCategoryView(title: "Food", items: mockDataFoods, layout: layout, imageName: photoFood)
                    MenuCategoryView(title: "Drink", items: mockDataDrinks, layout: layout, imageName:photoDrink)
                    MenuCategoryView(title: "Dessert", items: mockDataDesserts, layout: layout, imageName:photoDessert)
    
                }
            } .padding()
                .navigationTitle("Menu")
                .navigationBarItems(trailing: Button(action: {
                    isScreenPresented = true
                }) {
                    Image(systemName: "slider.horizontal.3")
                })
                .sheet(isPresented: $isScreenPresented) {
                    MenuItemsOptionView(selectedCategories: $selectedCategories, selectedSortOption: $selectedSortOption)
                }
        }
    }
}

#Preview {
    MenuItemsView()
}
