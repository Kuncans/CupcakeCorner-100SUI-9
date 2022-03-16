//
//  OrderStruct.swift
//  CupcakeCorner-100SUI-9
//
//  Created by Duncan Kent on 16/03/2022.
//

import SwiftUI

struct Order2: Codable {

    static let types = ["Vanilla", "Strawberry", "Chocolate", "Red Velvet"]
    
    // MARK: Product
    var type = 0
    var quantity = 3
    
    var specialRequestEnabled = false {
        didSet {
            if !specialRequestEnabled {
                extraFrosting = false
                addSprinkles = false
            }
        }
    }
    var extraFrosting = false
    var addSprinkles = false
    
    // MARK: Customer
    var name = ""
    var streetAddress = ""
    var city = ""
    var zip = ""
    
    var hasValidAddress: Bool {
        !name.isEmpty && name.trimmingCharacters(in: .whitespacesAndNewlines).count != 0 &&
        !streetAddress.isEmpty && streetAddress.trimmingCharacters(in: .whitespacesAndNewlines).count != 0 &&
        !city.isEmpty && city.trimmingCharacters(in: .whitespacesAndNewlines).count != 0 &&
        !zip.isEmpty && zip.trimmingCharacters(in: .whitespacesAndNewlines).count != 0
    }
    
    // MARK: Pricing
    var cost: Double {
        var cost = Double(quantity) * 2
        
        cost += (Double(type) / 2)
        
        if extraFrosting {
            cost += Double(quantity)
        }
        
        if addSprinkles {
            cost += (Double(quantity) / 2)
        }
        
        return cost
    }
}
