//
//  CheckoutView.swift
//  CupcakeCorner-100SUI-9
//
//  Created by Duncan Kent on 16/03/2022.
//

import SwiftUI

struct CheckoutView: View {
    
    @ObservedObject var order: Order
    
    var body: some View {
        Text("Hello, World!")
    }
}

struct CheckoutView_Previews: PreviewProvider {
    static var previews: some View {
        CheckoutView(order: Order())
    }
}