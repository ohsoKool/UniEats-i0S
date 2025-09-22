//
//  FeaturedDishView.swift
//  UniEatsPage
//
//  Created by Rishikesh Gunda on 9/17/25.
//
import SwiftUI

struct FeaturedDishView: View {
    @State private var animateBurger: Bool = false
    var featuredDish: String
    var body: some View {
        Image(featuredDish)
            .resizable()
            .scaledToFill() // fills the frame
            .frame(width: 150, height: 150)
            .opacity(animateBurger ? 1 : 0.7)
            .offset(x: animateBurger ? -60 : 60)
            .animation(.easeInOut(duration: 2).repeatForever(autoreverses: true), value: animateBurger)
            .onAppear {
                animateBurger = true
            }

//            .clipped() // cuts off overflow
//            .border(.black)   // keeps your border visible
    }
}

#Preview {
    FeaturedDishView(featuredDish: "burger")
}
