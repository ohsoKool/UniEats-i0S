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
            .aspectRatio(contentMode: .fill)
            .frame(width: 350, height: 350)
//            .border(.black)
//            .padding()
    }
}

#Preview {
    FeaturedDishView(featuredDish: "burger")
}
