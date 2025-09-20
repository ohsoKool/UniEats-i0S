// DishCard.swift
// UniEatsPage
//
// Created by Rishikesh Gunda on 9/19/25.

import SwiftUI

struct DishCard: View {
    var dish: String
    var price: Int
    var img: String
    var desc: String
    var restaurantName: String = "Kortyard Cafe"
    var nameRestaurantSeparator = "-"
    
    @ObservedObject var cart: CartModel
    
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 4) {
                HStack {
                    Text(dish)
                        .font(.system(size: 20))
                        .foregroundColor(.black)
                    Text(nameRestaurantSeparator)
                        .font(.system(size: 20))
                        .foregroundColor(.black)
                    Text(restaurantName)
                        .font(.system(size: 20))
                        .foregroundColor(.black)
                }
                
                Text("₹\(price)")
                    .foregroundColor(.black.opacity(0.7))
                
                Text(desc)
                    .foregroundColor(.gray)
            }
            
            Spacer()
            
            Image(img)
                .resizable()
                .scaledToFill()
                .frame(width: 100, height: 100)
                .cornerRadius(8)
                .overlay(
                    Button(action: {
                        cart.addItem(dish: dish)
                        // print("\(dish) added to cart!")
                    }) {
                        Text("ADD")
                            .font(.caption)
                            .fontWeight(.bold)
                            .padding(6)
                            .background(Color.black.opacity(0.7))
                            .cornerRadius(16)
                            .foregroundColor(.white)
                    }
                    .padding(6),
                    alignment: .bottomTrailing
                )
        }
    }
}

#Preview {
    DishCard(
        dish: "Pasta",
        price: 499,
        img: "pasta",
        desc: "Secret Recipe Filled with Joy",
        cart: CartModel()
    )
}
