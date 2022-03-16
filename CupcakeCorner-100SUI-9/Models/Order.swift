//
//  Order.swift
//  CupcakeCorner-100SUI-9
//
//  Created by Duncan Kent on 16/03/2022.
//

import SwiftUI

class Order: ObservableObject {
    
    static let types = ["Vanilla", "Strawberry", "Chocolate", "Red Velvet"]
    
    // MARK: Product
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
    
    // MARK: Customer
    @Published var name = ""
    @Published var streetAddress = ""
    @Published var city = ""
    @Published var zip = ""
    
    var hasValidAddress: Bool {
        !name.isEmpty && !streetAddress.isEmpty && !city.isEmpty && !zip.isEmpty
    }
    
}
