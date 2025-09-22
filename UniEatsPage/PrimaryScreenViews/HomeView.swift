//
//  HomeView.swift
//  UniEatsPage
//
//  Created by Rishikesh Gunda on 9/15/25.
//

import SwiftUI

struct HomeView: View {
    @StateObject var cart = CartModel() // shared cart for the whole app

    var body: some View {
        NavigationStack {
            ZStack {
                LinearGradientView()
                VStack(spacing: 0) {
                    TopHeaderView(
                        logoImageName: "unieatslogo",
                        appName: "UniEats",
                        userAvatar: "person.crop.circle"
                    )
                    UserInfoView(
                        greetUser: "Hello Rishi :)",
                        redpin: "redpin",
                        userlocation: "Shaikpet,Hyderabad,India"
                    )
                    .padding([.bottom])
                    .padding([.leading], 7)

                    SearchBarView()
//                        .padding(.all,0)
                    CategoryScrollView()
                    Spacer()
                    FeaturedDishView(featuredDish: "burger")
                        .padding(.bottom, 25)
                    PopularRestaurantsView()

                    VStack {
                        Spacer()
                        BottomNavbarView(cart: cart) // pass the cart down
                    }
                }
            }
        }
        .navigationBarBackButtonHidden()
    }
}

#Preview {
    HomeView(cart: CartModel())
}
