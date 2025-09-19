//
//  CategoryScrollView.swift
//  UniEatsPage
//
//  Created by Rishikesh Gunda on 9/17/25.
//
import SwiftUI

struct CategoryScrollView: View {
    var categories = ["All", "Burger", "Pizza", "Sandwich", "Pasta"]
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHStack(spacing: 6) {
                ForEach(categories, id: \.self) {
                    category in
                    Text("\(category)")
                        .frame(width: 80, height: 35)
                        .padding(.all, 3)
                        .background(
                            category == "All" ? Color.orange.opacity(0.2) : Color.clear
                        ).overlay(
                            RoundedRectangle(cornerRadius: 20)
                                .stroke(Color.black, lineWidth: 1)
                        )
                        .cornerRadius(20)
                }
                .padding(2)
            }
        }
        .padding(.leading, 12)
    }
}

#Preview {
    CategoryScrollView()
}
