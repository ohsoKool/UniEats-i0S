// DishCard.swift
// UniEatsPage
//
// Created by Rishikesh Gunda on 9/19/25.

import SwiftUI

struct DishCard: View {
    var dish: Dish
    var nameRestaurantSeparator = "-"
    
    @ObservedObject var cart: CartModel
    
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 4) {
                HStack {
                    Text(dish.name)
                        .font(.system(size: 20))
                        .foregroundColor(.black)
                    Text(nameRestaurantSeparator)
                        .font(.system(size: 20))
                        .foregroundColor(.black)
                    Text(dish.restaurant)
                        .font(.system(size: 20))
                        .foregroundColor(.black)
                }
                
                Text("₹\(dish.price)")
                    .foregroundColor(.black.opacity(0.7))
                
                Text(dish.description)
                    .foregroundColor(.gray)
            }
            
            Spacer()
            
            Image(dish.image)
                .resizable()
                .scaledToFill()
                .frame(width: 100, height: 100)
                .cornerRadius(8)
                .overlay(
                    Button(action: {
                        cart.addItem(dish: dish.name)
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
    let sampleDish = Dish(
        name: "Pasta",
        price: 499,
        description: "Secret Recipe Filled with Joy", image: "pasta",
        restaurant: "Italian Bistro"
    )
    
    DishCard(
        dish: sampleDish,
        cart: CartModel()
    )
}
