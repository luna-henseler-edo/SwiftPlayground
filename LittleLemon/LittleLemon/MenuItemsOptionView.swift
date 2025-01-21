//
//  MenuItemsOptionView.swift
//  LittleLemon
//
//  
//

import SwiftUI

enum SortOption: String, CaseIterable {
    case popularity = "Most Popular"
    case price = "Price €-€€€"
    case alphabet = "A-Z"
}


struct MenuItemsOptionView: View {
    
    @Environment(\.presentationMode) var presentationMode
    @Binding var selectedCategories: [Category]
    @Binding var selectedSortOption: SortOption
    
    
    
    var body: some View {
        NavigationView {
            List {
                Section {
                    ForEach(Category.allCases, id:\.self) { category in
                        HStack {
                            Text(category.rawValue)
                            Spacer()
                            if selectedCategories.contains(category) {
                                Image(systemName: "checkmark")
                            }
                        }
                        .contentShape(Rectangle())
                        .onTapGesture {
                            if selectedCategories.contains(category) {
                                selectedCategories.removeAll { $0 == category }
                            } else {
                                selectedCategories.append(category)
                            }
                        }
                    }
                    .listRowSeparator(.hidden)
                } header: {
                    Text("Selected categories")
                } .listSectionSeparator(.hidden)
                
                Section {
                    ForEach(SortOption.allCases, id:\.self) { sortOption in
                        HStack{
                            Text(sortOption.rawValue)
                            Spacer()
                            if selectedSortOption == sortOption {
                               Image(systemName: "checkmark")
                           }
                        }
                        .contentShape(Rectangle())      //to make the whole row tappable
                        .onTapGesture {
                            selectedSortOption = sortOption
                        }
                    }
                    .listRowSeparator(.hidden)
                } header: {
                    Text("Sort by")
                } .listSectionSeparator(.hidden)
            }
            .navigationTitle("Filter")
            .navigationBarItems(trailing: Button("Done") {
                presentationMode.wrappedValue.dismiss()
            })
        }
    }
}


#Preview {
    @Previewable @State var selectedSortOption = SortOption.popularity
    @Previewable @State var selectedCategories = [Category.food]
    MenuItemsOptionView(selectedCategories: $selectedCategories, selectedSortOption: $selectedSortOption)
}
