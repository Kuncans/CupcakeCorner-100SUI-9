//
//  Order.swift
//  CupcakeCorner-100SUI-9
//
//  Created by Duncan Kent on 16/03/2022.
//

import SwiftUI

class Order: ObservableObject {
    
    static let types = ["Vanilla", "Strawberry", "Chocolate", "Red Velvet"]
    
    @Published var type = 0
    @Published var quantity = 3
    
    @Published var specialRequestEnabled = false {
        didSet {
            if !specialRequestEnabled {
                extraFrosting = false
                addSprinkles = false
            }
        }
    }
    @Published var extraFrosting = false
    @Published var addSprinkles = false    
    
}
