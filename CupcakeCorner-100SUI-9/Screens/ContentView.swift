//
//  ContentView.swift
//  CupcakeCorner-100SUI-9
//
//  Created by Duncan Kent on 16/03/2022.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var order = Orders()
    
    var body: some View {
        NavigationView {
            Form {
                Section {
                    Picker("Select your cake type", selection: $order.order.type) {
                        ForEach(Order2.types.indices) {
                            Text(Order2.types[$0])
                        }
                    }
                    
                    Stepper("Number of cakes: \(order.order.quantity)", value: $order.order.quantity)
                    
                }
                
                Section {
                    Toggle("Special Requests?", isOn: $order.order.specialRequestEnabled.animation())
                    
                    if order.order.specialRequestEnabled {
                        Toggle("+ Extra frosting", isOn: $order.order.extraFrosting)
                        
                        Toggle("+ Sprinkles", isOn: $order.order.addSprinkles)
                        
                    }
                }
                
                Section {
                    NavigationLink {
                        AddressView(order: order)
                    } label: {
                        Text("Delivery Information")
                    }
                }
            }
            .navigationTitle("Cupcake Corner")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
