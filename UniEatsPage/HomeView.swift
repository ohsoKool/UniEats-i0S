//
//  HomeView.swift
//  UniEatsPage
//
//  Created by Rishikesh Gunda on 9/15/25.
//

import SwiftUI

struct HomeView: View {
    @State private var inputText: String = ""
    var categories = ["All", "Burger", "Pizza", "Sandwich", "Pasta"]
    let bottomMenuColor = Color("bottom-color")
    var body: some View {
        ZStack {
            LinearGradient(colors: [.white, .orange.opacity(0.2)], startPoint: .bottom, endPoint: .top)
            VStack {
                TopHeaderView(
                    logoImageName: "unieatslogo", logoName: "Swiz King", rightIconName: "unieatsheart"
                )

                UserInfoView(avatar: "person.crop.circle", greetUser: "Hello Artharv", redpin: "redpin", userlocation: "Pune, Maharashtra,India")
                SearchBarView()

//                Spacer()
                ScrollView(.horizontal) {
                    HStack {
                        ForEach(categories, id: \.self) {
                            category in
                            Text("\(category)")
                                .padding()
                                .overlay(
                                    RoundedRectangle(cornerRadius: 20)
                                        .stroke(Color.black, lineWidth: 1)
                                )
                                .padding(8)
                        }
                    }
                }
            }
        }
        Image("burger")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 300, height: 300)

        HStack(alignment: .center, spacing: 10) {
            Image(systemName: "house.fill")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 50, height: 40)
                .padding(5)
            Image("delivery")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 70, height: 60)
                .padding(5)
            Image(systemName: "cart")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 50, height: 40)
                .padding(7)
            Image(systemName: "gearshape")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 50, height: 40)
                .padding(5)
        }
        .background(bottomMenuColor)
        .cornerRadius(64)
        .padding()
    }
}

#Preview {
    HomeView()
}
