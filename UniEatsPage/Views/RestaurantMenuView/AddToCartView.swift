//
//  AddToCardView.swift
//  UniEatsPage
//
//  Created by Rishikesh Gunda on 9/19/25.
//
import SwiftUI

struct AddToCartView: View {
    @StateObject var cart = CartModel()
    var body: some View {
        VStack {
            List {
                ForEach(Array(zip(cart.cartItems, cart.quantitySelected)), id: \.0) { dish, quantity in
                    HStack {
                        Text(dish)
                        Spacer()
                        Text("Quantity: \(quantity)")
                    }
                }
            }
        }
    }
}
