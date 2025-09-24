//
//  HomeView.swift
//  UniEatsPage
//
//  Created by Rishikesh Gunda on 9/15/25.
//

import SwiftUI

struct HomeView: View {
    @ObservedObject var cart: CartModel // shared cart

    var body: some View {
        NavigationStack {
            ZStack {
                LinearGradientView()
                    .ignoresSafeArea()

                ScrollView(showsIndicators: false) {
                    VStack(spacing: 0) {
                        TopHeaderView(
                            logoImageName: "unieatslogo",
                            appName: "UniEats",
                            userAvatar: "person.crop.circle",
                            logoSize: CGSize(width: 50, height: 50),
                            avatarSize: CGSize(width: 50, height: 50)
                        )
                        .padding(.horizontal, 6)
//                        .border(.black)

                        UserInfoView(
                            greetUser: "Hello Rishi :)",
                            redpin: "redpin",
                            userlocation: "Shaikpet, Hyderabad, India"
                        )
                        .padding(.all, 10)
//                        .border(.black)

                        SearchBarView(iconSize: CGSize(width: 25, height: 25))
                            .padding(.all, 10)

                        CategoryScrollView()
                            .frame(height: 60)
                            .padding(.horizontal)
//                            .border(.black)

                        FeaturedDishView(featuredDish: "burger", imageSize: CGSize(width: 150, height: 150))
//                            .border(.black)

                        PopularRestaurantsView()
                            .padding(.vertical, 8)
                            .padding(.horizontal, 8)
//                            .border(.black)
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
