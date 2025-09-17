//
//  BottomNavbarView.swift
//  UniEatsPage
//
//  Created by Rishikesh Gunda on 9/17/25.
//

import SwiftUI

struct BottomNavbarView: View {
    var homeIcon: String = "house.fill"
    var deliverIcon: String = "delivery"
    var cartIcon: String = "cart"
    var settingsicon: String = "gearshape"
    var bottomMenuColor = Color.orange.opacity(0.2)
    var body: some View {
        HStack(alignment: .center, spacing: 10) {
//                NavigationLink(destination: HomeView()){
            Image(systemName: homeIcon)
                .resizable()
                .foregroundColor(.black)
                .aspectRatio(contentMode: .fit)
                .frame(width: 50, height: 40)
                .padding(.all, 5)
                .background(.white)
                .overlay(Circle().stroke(Color.white, lineWidth: 1))
                .cornerRadius(20)
                .padding(8)
//                }
            NavigationLink(destination: RestaurantView()) {
                Image(systemName: cartIcon)
                    .resizable()
                    .foregroundColor(.black)
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 50, height: 40)
                    .padding(8)
            }
            NavigationLink(destination: DeliveryMapView()) {
                Image(deliverIcon)
                    .resizable()
                    .foregroundColor(.black)
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 70, height: 60)
                    .padding(8)
            }
            NavigationLink(destination: SettingsView()) {
                Image(systemName: settingsicon)
                    .resizable()
                    .foregroundColor(.black)
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 50, height: 40)
                    .padding(8)
            }
        }
        .background(bottomMenuColor)
        .cornerRadius(64)
        .padding()
    }
}

#Preview {
    BottomNavbarView()
}
