//
//  RestaurantView.swift
//  UniEatsPage
//
//  Created by Rishikesh Gunda on 9/17/25.
//

import SwiftUI

struct RestaurantView: View {
    var body: some View {
        ZStack {
            LinearGradientView()
            RestaurantMenu(restaurantName: "The Shawarma Wrapz", restaurantLocation: "O.U.Colony", restaurantRating: "4.5⭐")
        }
    }
}

#Preview {
    RestaurantView()
}
