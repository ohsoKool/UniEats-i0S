//
//  SearchBarView.swift
//  UniEatsPage
//
//  Created by Rishikesh Gunda on 9/16/25.
//
import SwiftUI

struct SearchBarView: View {
    @State private var inputText: String = ""
    var body: some View {
        HStack(spacing: 3) {
//            Spacer()
            Image(systemName: "magnifyingglass")
                .resizable()
                .renderingMode(.original)
                .aspectRatio(contentMode: .fit)
                .frame(width: 25, height: 30)
                .padding(.all, 2)
                .padding(.leading, 6)
            TextField("Search Product, Dish", text: $inputText)
                .padding()
//                .frame(width: 300)
//                .border(.black, width: 2)
//                .cornerRadius(10)
                .frame(width: 320, height: 60)
                .overlay(RoundedRectangle(cornerRadius: 10)
                    .stroke(Color.black))
            Spacer()
        }
    }
}

#Preview {
    TopHeaderView(
        logoImageName: "unieatslogo", logoName: "Swiz King", rightIconName: "unieatsheart"
    )

    UserInfoView(avatar: "person.crop.circle", greetUser: "Hello Artharv", redpin: "redpin", userlocation: "Pune, Maharashtra,India")
    SearchBarView()
}
