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
            Color(.white)
            
            VStack {
                HStack {
                    Image("unieatsicon-removebg-preview")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 50, height: 70)
                    Spacer()
                    Text("Swiz King")
                        .font(.title)
                        .foregroundColor(.black)
                        .fontWeight(.bold)
                    Spacer()
                    Spacer()
                    Spacer()
                    Spacer()
                    Spacer()
                    Spacer()
                    Spacer()
                    Image("unieatsheart")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 50, height: 70)
                }
//                .padding()
//                .background(.gray)
                HStack {
                    Image(systemName: "person.crop.circle")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 80, height: 80)
                    Spacer()
                    VStack {
                        Text("Hello Artharv")
                            .font(.title2)
                            .foregroundColor(.black)
                            .fontWeight(.bold)
                            .padding()
                        HStack {
                            Image("redpin")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 30, height: 50)
                            Text("Pune,Maharashtra,India")
                            Spacer()
                        }
                    }
                }
//                .background(.blue)
                TextField("Search Product, Dish", text: $inputText)
                    .padding()
                    .frame(width: 350)
                    .border(.black, width: 2)
                    .cornerRadius(10)
                Spacer()
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
        
        HStack {
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
