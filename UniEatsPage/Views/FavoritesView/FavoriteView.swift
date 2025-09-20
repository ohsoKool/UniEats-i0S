// FavoritesView.swift
// UniEatsPage
//
// Created by Rishikesh Gunda on 9/17/25.

import SwiftUI

struct FavoritesDishesView: View {
    var dishNames: [String] = ["Burger", "Pizza", "Nachos", "Pasta"]
    var dishDescs: [String] = [
        "This is a deliciously cooked Dish with red tomatoes, Jalapenos and Secret Sauce",
        "This is a deliciously cooked Dish with red tomatoes, Jalapenos and Secret Sauce",
        "This is a deliciously cooked Dish with red tomatoes, Jalapenos and Secret Sauce",
        "This is a deliciously cooked Dish with red tomatoes, Jalapenos and Secret Sauce"
    ]

    var body: some View {
        NavigationStack {
            ZStack {
                LinearGradientView()

                VStack(alignment: .leading) {
                    FavoritesTopBar()

                    List {
                        ForEach(dishNames, id: \.self) { dishName in
                            FavoriteDishCard(dishName: dishName)
                        }
                    }
                    .listStyle(.plain)
                }
            }
            .navigationTitle("Favorites")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    FavoritesDishesView(
        dishNames: ["Burger", "Pizza", "Nachos", "Pasta"],
        dishDescs: [
            "This is a deliciously cooked Dish with red tomatoes, Jalapenos and Secret Sauce",
            "This is a deliciously cooked Dish with red tomatoes, Jalapenos and Secret Sauce",
            "This is a deliciously cooked Dish with red tomatoes, Jalapenos and Secret Sauce",
            "This is a deliciously cooked Dish with red tomatoes, Jalapenos and Secret Sauce"
        ]
    )
}

struct FavoriteDishCard: View {
    var dishName: String = "Pizza"

    var body: some View {
        DishCard(
            dish: "Pizza",
            price: 250,
            img: "pizza",
            desc: "This is a deliciously cooked Dish with red tomatoes, Jalapenos and Secret Sauce",
            restaurantName: "Pizza Hut",
            cart: CartModel()
        )
        .padding()
        .overlay(
            RoundedRectangle(cornerRadius: 25)
                .fill(Color.gray.opacity(0.1))
                .stroke(Color.gray.opacity(0.2))
        )
    }
}

struct FavoritesTopBar: View {
    var body: some View {
        HStack {
            NavigationLink(destination: FavoritesDishesView(
                dishNames: ["Burger", "Pizza", "Nachos", "Pasta"],
                dishDescs: [
                    "This is a deliciously cooked Dish with red tomatoes, Jalapenos and Secret Sauce",
                    "This is a deliciously cooked Dish with red tomatoes, Jalapenos and Secret Sauce",
                    "This is a deliciously cooked Dish with red tomatoes, Jalapenos and Secret Sauce",
                    "This is a deliciously cooked Dish with red tomatoes, Jalapenos and Secret Sauce"
                ]
            )) {
                Text("Favorite Dishes")
                    .font(.title2)
                    .foregroundColor(.black)
            }

            Spacer()
            Button("Favorite Restaurants")
                {}
                .font(.title2)
                .foregroundColor(.black)
        }
        .padding()
    }
}
