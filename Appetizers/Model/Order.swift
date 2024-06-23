//
//  Order.swift
//  Appetizers
//
//  Created by John Patrick Echavez on 6/23/24.
//

import Foundation

final class Order: ObservableObject {
    
    @Published var items: [Appetizer] = []
    
    func totalOrder() {
        
    }
    
    var totalPrice: Double {
        items.reduce(0) { $0 + $1.price } 
    }
    
    func add(appetizer: Appetizer) {
        items.append(appetizer)
    }
    
    
    func deleteItem(offsets: IndexSet) {
        items.remove(atOffsets: offsets)
        //orderItems.remove(atOffsets: offsets)
    }
    
}
