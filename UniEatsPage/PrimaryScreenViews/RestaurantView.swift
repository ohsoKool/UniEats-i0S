//
//  RestaurantView.swift
//  UniEatsPage
//
//  Created by Rishikesh Gunda on 9/17/25.
//

import SwiftUI

struct RestaurantView: View {
    @StateObject var cart = CartModel()
    var restaurantNames: [String] = ["Paradise", "Pista House", "Mehfil", "Shahghouse", "Mandaar"]
    var restaurantLocation: [String] = ["Paradise Circle", "Kondapur", "Shaikpet", "Tolichowki", "4 Seasons"]
    var body: some View {
        ZStack {
            LinearGradientView()
            VStack(alignment: .leading) {
                TopRestaurantBar()
                Divider()
                ScrollView {
                    LazyVStack(spacing: 15) {
                        ForEach(0 ..< restaurantNames.count, id: \.self) { index in
                            RestaurantCardView(
                                restaurantBanner: "kortyard",
                                restaurantName: restaurantNames[index],
                                restaurantLocation: restaurantLocation[index]
                            )
                            Divider()
                        }
                    }
                    .padding()
                }
            }
            .navigationTitle("RESTAURANTS")
        }
    }
}

#Preview {
    RestaurantView()
}

struct TopRestaurantBar: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            UserInfoView(redpin: "redpin", userlocation: "Hyderabad,Telangana,India")
                .padding(.all, 0)
//                .border(.black)
            Text("All Restaurants")
                .font(.largeTitle)
                .fontWeight(.heavy)
                .padding(.all, 0)
//                .border(.black)
        }
    }
}
