//
//  PolularRestaurantView.swift
//  UniEatsPage
//
//  Created by Rishikesh Gunda on 9/22/25.
//

import SwiftUI

struct PopularRestaurantsView: View {
    @State private var animateRestaurantList: Bool = false
    var horizontalList: [Int] = [1, 2, 3, 4, 5]
    var body: some View {
        VStack(spacing: -20) {
            HStack {
                Text("Popular Restaurants")
                    .font(.title3)
                    .fontWeight(.medium)
                Spacer()
                Image(systemName: "arrow.up.right")
                    .foregroundColor(.orange)
                    .padding(8)
                    .overlay(Circle()
                        .fill(.clear)
                        .stroke(.gray.opacity(0.5)))
            }
            .padding()
            ScrollView(.horizontal) {
                HStack(spacing: 5) {
                    ForEach(horizontalList, id: \.self) { _ in
                        RestaurantCardView()
                            .animation(.easeInOut(duration: 5).repeatForever(autoreverses: true).delay(2), value: animateRestaurantList).offset(x: animateRestaurantList ? 0 : -100)
                    }
                }
                .onAppear {
                    animateRestaurantList = true
                }
            }
        }
        .overlay(RoundedRectangle(cornerRadius: 36)
            .fill(.clear)
            .stroke(.gray.opacity(0.4), lineWidth: 1))
        .offset(x: animateRestaurantList ? 0 : -100)
        .animation(.easeOut(duration: 2), value: animateRestaurantList)
    }
}

#Preview {
    PopularRestaurantsView()
}
