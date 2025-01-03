//
//  ContentView.swift
//  Reservations
//
//  Created by luna.henseler on 30/12/24.
//

import SwiftUI

struct ParentView: View {
    
    
    
    var body: some View {
        NavigationView{
            VStack {
                Text("Exercise 1")
                NavigationLink (destination: MyTabView()) {
                    Text("Do something")
                }
            }
        }.navigationTitle("Little Lemon")
    }
    
}


#Preview {
    ParentView()
}
