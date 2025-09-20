//
//  BottomNavbarView.swift
//  UniEatsPage
//
//  Created by Rishikesh Gunda on 9/17/25.
//

import SwiftUI

struct BottomNavbarView: View {
    @ObservedObject var cart: CartModel // receives the shared cart

    var homeIcon: String = "house.fill"
    var favoriteIcon: String = "heart"
    var cartIcon: String = "cart"
    var settingsicon: String = "gearshape"
    var bottomMenuColor = Color.orange.opacity(0.2)

    var body: some View {
        HStack(alignment: .center, spacing: 15) {
            Image(systemName: homeIcon)
                .resizable()
                .foregroundColor(.black)
                .aspectRatio(contentMode: .fit)
                .frame(width: 30)
                .padding(.all, 5)
                .background(.white)
                .overlay(Circle().stroke(Color.white, lineWidth: 1))
                .cornerRadius(20)
                .padding(8)

            NavigationLink(
                destination: RestaurantMenu(
                    restaurantName: "The Shawarma Wrapz",
                    restaurantLocation: "O.U.Colony",
                    restaurantRating: "4.5⭐",
                    cart: cart
                )
            ) {
                Image(systemName: cartIcon)
                    .resizable()
                    .foregroundColor(.black)
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 30)
                    .padding(8)
            }
            NavigationLink(destination: FavoritesDishesView()) {
                Image(systemName: favoriteIcon)
                    .resizable()
                    .foregroundColor(.black)
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 30)
                    .padding(8)
            }
            NavigationLink(destination: SettingsView()) {
                Image(systemName: settingsicon)
                    .resizable()
                    .foregroundColor(.black)
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 30)
                    .padding(8)
            }
        }
        .background(bottomMenuColor)
        .cornerRadius(64)
        .padding()
    }
}

#Preview {
    BottomNavbarView(cart: CartModel(), homeIcon: "house.fill", favoriteIcon: "heart", cartIcon: "cart", settingsicon: "gearshape")
}
