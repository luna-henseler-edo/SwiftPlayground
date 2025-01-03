//
//  PlayGround2.swift
//  Reservations
//
//  Created by luna.henseler on 2/1/25.
//

import SwiftUI

struct PlayGround2: View {
    
    
    @State var selectedDate = Date()
    @State private var size: CGFloat = 0.1
    @State private var value = 1
    @State var isShowing = true
    
    
    var dateClosedRange: ClosedRange<Date> {
        let min = Calendar.current.date(byAdding: .day, value: -1, to: Date())!
        let max = Calendar.current.date(byAdding: .day, value: 1, to: Date())!
        return min...max
    }
    
    var body: some View {
        
        NavigationView {
            Form {
                Section {
                    DatePicker(
                        selection: $selectedDate,
                        in: dateClosedRange,
                        displayedComponents: .date,
                        label: { Text("Due Date") }
                    )
                }
            }
        }
        
        
        
        
        NavigationView {
            VStack {
                Text("Current value: \(value)")
                Stepper("Number of guests", value: $value, in:1...20)
            }
            .padding()
            .navigationTitle("Reservation form")
        }
        
        
        
        
        Toggle(isOn: $isShowing) {
            Text("Hello World")
        }
        
        
        
        
        Button(role: .destructive) {
            print("do something!")
        } label: {
            HStack {
                Image(systemName: "trash")
                Text("")
            }
        }
        
        
        
        
        VStack {
            Text("Little Lemon").font(.system(size: size * 50))
            Slider(value: $size)
            
        }
        .padding()
        
        Label("Menu", systemImage: "fork.knife")
            .labelStyle(.titleAndIcon)
    }
}



#Preview {
    PlayGround2()
}
