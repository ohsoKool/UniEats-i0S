//
//  RestaurantMenu.swift
//  UniEatsPage
//
//  Created by Rishikesh Gunda on 9/17/25.
//

//
//  LearningList.swift
//  LearningSwiftUI
//
//  Created by Rishikesh Gunda on 9/17/25.
//

import SwiftUI

struct RestaurantMenu: View {
    var categories: [String] = ["Starters", "Meals", "Combos", "Deserts", "Drinks"]
    var restaurantName: String
    var restaurantLocation: String
    var restaurantRating: String
    var dishNames: [String] = ["Chicken 65", "Burger", "Pizza", "Pasta", "Tacos", "FrenchFries"]
    var dishPrices: [Int] = [100, 90, 180, 230, 120, 60]
    var locationIcon: String = "mappin.circle.fill"
    var filters: [String] = ["Veg", "Non Veg", "Healthy", "Egg", "Recommended"]
    var dishImages: [String] = ["chicken65", "burger2", "pasta", "pizza", "tacos", "frenchfries"]
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            Text(restaurantName)
                .font(.custom("DancingScript-Bold", size: 28))
                .frame(alignment: .leading)
                .fontWeight(.heavy)
                .foregroundColor(.black)
                .padding(.all, 8)
                .padding(.bottom, 0)
//                .border(.black)
            HStack(spacing: 0) {
                Image(systemName: "mappin.circle.fill")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 20, height: 20)
                    .padding(.all, 8)
//                    .border(.black)
                Text(restaurantLocation)
                    .font(.headline)
                    .foregroundColor(.black)
                    .padding(.all, 8)
//                    .border(.black)
                Text(restaurantRating)
                    .font(.headline)
                    .foregroundColor(.black)
                    .padding(.all, 10)
                    .frame(height: 34)
//                    .border(.black)
            }
            .padding(.bottom, 4)
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    ForEach(filters, id: \.self) {
                        filter in
                        Text(filter)
                            .foregroundColor(.black)
                            .padding()
                            .frame(height: 40, alignment: .center)
                            .background(.gray.opacity(0.2))
                            .cornerRadius(16)
                    }
                }
            }
            .padding()
//            .border(.black)
//            List(dishNames, id: \.self) {
//                dish in
//                HStack {
//                    LazyVStack(alignment: .leading, spacing: 0) {
//                        Text(dish)
//                            .font(.system(size: 25))
//                            .foregroundColor(.black)
//                            .padding([.top, .bottom, .trailing], 6)
//                            .padding(.leading, 0)
            ////                        .border(.black)
//                        Text("$150")
//                    }
//                    Image("burger")
//                        .resizable()
//                        .aspectRatio(contentMode: .fill)
//                        .frame(width: 100, height: 100)
//                        .padding()
//                        .border(.black)
//                }
//            }
            List(Array(zip(dishNames, zip(dishPrices, dishImages))), id: \.0) { dish, pair in
                let (price, img) = pair
                HStack {
                    VStack(alignment: .leading, spacing: 4) {
                        Text(dish)
                            .font(.system(size: 20))
                            .foregroundColor(.black)
                        Text("₹\(price)")
                            .foregroundColor(.gray)
                    }
                    Spacer()
                    Image(img)
                        .resizable()
                        .scaledToFill()
                        .frame(width: 100, height: 100)
                        .clipped()
                        .cornerRadius(8)
                }
                .listRowBackground(Color.white)
            }
            .listStyle(PlainListStyle())
        }
    }
}

#Preview {
    RestaurantMenu(restaurantName: "The Shawarma Wrapz", restaurantLocation: "O.U.Colony", restaurantRating: "4.5⭐")
}
