//
//  HomeView.swift
//  UniEatsPage
//
//  Created by Rishikesh Gunda on 9/15/25.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationStack {
            ZStack {
                //            Image("beige-bg")
                LinearGradientView()
                VStack {
                    TopHeaderView(
                        logoImageName: "unieatslogo", logoName: "UniEats", rightIconName: "unieatsheart"
                    )
                    UserInfoView(avatar: "person.crop.circle", greetUser: "Hello Rishi :)", redpin: "redpin", userlocation: "Shaikpet,Hyderabad,India")
                        .padding([.bottom])
                        .padding([.leading], 7)

                    SearchBarView()
                    CategoryScrollView()
                    FeaturedDishView(featuredDish: "burger")
                    VStack {
                        Spacer()
                        BottomNavbarView()
                    }
                }
            }
        }
    }
}

#Preview {
    HomeView()
}
