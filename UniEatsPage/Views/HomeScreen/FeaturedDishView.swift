//
//  FeaturedDishView.swift
//  UniEatsPage
//
//  Created by Rishikesh Gunda on 9/17/25.
//
import SwiftUI

struct FeaturedDishView: View {
    var featuredDish: String
    var body: some View {
        Image(featuredDish)
            .resizable()
            .scaledToFill()   // fills the frame
            .frame(width: 350, height: 350)
//            .clipped()        // cuts off overflow
//            .border(.black)   // keeps your border visible
    }
}


#Preview {
    FeaturedDishView(featuredDish: "burger")
}
