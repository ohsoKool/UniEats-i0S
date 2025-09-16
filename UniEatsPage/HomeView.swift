//
//  HomeView.swift
//  UniEatsPage
//
//  Created by Rishikesh Gunda on 9/15/25.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        ZStack {
//            Image("beige-bg")
            LinearGradient(colors: [.white, .orange.opacity(0.2)], startPoint: .bottom, endPoint: .top)
                .ignoresSafeArea()
            VStack {
                TopHeaderView(
                    logoImageName: "unieatslogo", logoName: "Swiz King", rightIconName: "unieatsheart"
                )
                UserInfoView(avatar: "person.crop.circle", greetUser: "Hello Rishi :)", redpin: "redpin", userlocation: "Pune, Maharashtra,India")
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

#Preview {
    HomeView()
}
