//
//  ContentView.swift
//  Course6
//
//  Created by luna.henseler on 13/1/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}

class SecretFood {
    private var secretIngredients: [String] = []

    internal func readSecretIngredients() {
        print("Secret Ingredients:")
        print(secretIngredients)
    }
}



