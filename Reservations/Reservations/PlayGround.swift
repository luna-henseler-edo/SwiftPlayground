//
//  Untitled.swift
//  Reservations
//
//  Created by luna.henseler on 2/1/25.
//

import SwiftUI

struct PlayGround: View {
    @State private var offsetValue = CGSize.zero
    var body: some View {
        
        @ObservedObject var model = Model()
        
        
        ZStack {
            Circle()
                .scale(x: 0.8, y: 0.75)
                .foregroundColor(Color.blue)
                .padding()
            
            VStack {
                
                Image("LittleLemonLogo")
                    .offset(offsetValue)
                    .gesture(
                        DragGesture()
                            .onChanged { gesture in
                                offsetValue = gesture.translation
                            }
                        )
                .imageScale(.large)
                .foregroundColor(.accentColor)
                HStack {
                    Text("Little Lemon Restaurant").onLongPressGesture(minimumDuration: 2, maximumDistance: 15, perform:{
                        print("Long Press Detected!")
                    },
                    onPressingChanged: { state in
                    print (state)
                    })
                        
                        .frame(width: 150, height: 100, alignment: .trailing)
                    VStack{
                        Text("Tortellini, Botterga and Carbonara") .onTapGesture(count:2)
                        {print("Text Tapped 2 times!")}
                            .frame(width: 150, height: 100, alignment: .trailing)
                    }
                }
                
            }
        } .background(Color.yellow)
        
        
        VStack {
            List {
                ForEach(model.meals) { item in
                    Text(item.name)
                }
            }
        }
    }
}

struct Item: Identifiable {
    var name: String
    var id = UUID()
}

class Model: ObservableObject {
    @Published var meals: [Item] = menuItems()
    
    static func menuItems() -> [Item]{
        return [
            Item(name: "Lasagna"),
            Item(name: "Fettuccini Alfredo"),
            Item(name: "Spaghetti"),
            Item(name: "Avocado Toast"),
            Item(name: "Tortellini"),
            Item(name: "Peperoni")
        ]
    }
}






#Preview {
    PlayGround()
    
    
}
