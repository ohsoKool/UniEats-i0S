//
//  CartModel.swift
//  UniEatsPage
//
//  Created by Rishikesh Gunda on 9/19/25.
//

import SwiftUI

class CartModel: ObservableObject {
    @Published var isCartActive: Bool = false
    @Published var cartItems: [String] = []
    @Published var quantitySelected: [Int] = []
    func addItem(dish: String) {
        if let index = cartItems.firstIndex(of: dish) {
            // If dish already present, add quantity
            quantitySelected[index] += 1
            isCartActive = true
        } else {
            cartItems.append(dish)
            quantitySelected.append(1)
            isCartActive = true
        }
    }
}
