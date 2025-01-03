//
//  ReservationForm.swift
//  Reservations
//
//  Created by luna.henseler on 30/12/24.
//

import SwiftUI

struct ReservationForm: View {
    @State var date: Date = Date()
    @State var customerName: String = ""
    var body: some View {
        Form {
            TextField("Type your name",
                      text: $customerName,
                      onEditingChanged: {status in print(status)
            }
            
            )
            .onChange(of: customerName) {oldValue, newValue in
                print(newValue)
            }
            .onSubmit {
                print("Submitted")
                }
        }.padding()
        
        
        Form {
            HStack {
                DatePicker("Select date", selection: $date)
                Button(action: { print("Done") }) {
                                   HStack {
                                       Image(systemName:"arrow.right.circle")
                                       Text("Done")
                                   }
                               }
            }
            Text("Date is \(date.formatted(date: .long, time: .complete))")
        }
        
        
    }
}

#Preview {
    ReservationForm()
}
