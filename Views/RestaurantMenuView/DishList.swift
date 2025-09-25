//
//  DishList.swift
//  UniEatsPage
//
//  Created by Rishikesh Gunda on 9/19/25.
//

import SwiftUI

struct DishList: View {
    var dishNames: [String]
    var dishPrices: [Int]
    var dishImages: [String]

    @ObservedObject var cart: CartModel

    var body: some View {
        List(Array(zip(dishNames, zip(dishPrices, dishImages))), id: \.0) { _, pair in
            let (price, img) = pair
            DishCard(dish: "Burger", price: price, img: img, desc: "Secret recipe filled with Joy!", cart: cart)
                .listRowBackground(Color.white)
        }
        .listStyle(.plain)
    }
}

#Preview {
    DishList(dishNames: ["Chicken 65", "Burger", "Pizza", "Pasta", "Tacos", "FrenchFries"], dishPrices: [100, 90, 180, 230, 120, 60], dishImages: ["chicken65", "burger2", "pasta", "pizza", "tacos", "frenchfries"], cart: CartModel())
}
