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
        List(Array(zip(dishNames, zip(dishPrices, dishImages))), id: \.0) { dish, pair in
            let (price, img) = pair
            DishCard(dish: dish, price: price, img: img, cart: cart)
                .listRowBackground(Color.white)
        }
        .listStyle(.plain)
    }
}
