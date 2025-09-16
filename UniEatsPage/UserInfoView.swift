//
//  UserInfoView.swift
//  UniEatsPage
//
//  Created by Rishikesh Gunda on 9/16/25.
//

import SwiftUI

struct UserInfoView: View {
    var avatar: String
    var greetUser: String
    var redpin: String
    var userlocation: String
    var body: some View {
        HStack(spacing: 5) {
            Image(systemName: avatar)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 70, height: 70)
                .padding(.leading, 5)
            VStack(alignment: .leading, spacing: 0) {
                Text(greetUser)
                    .font(.title2)
                    .fontWeight(.medium)
                    .padding([.horizontal, .vertical], 3)
//                    .border(.black)
                HStack(spacing: 0) {
                    Image(redpin)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 15, height: 30)
                    Text(userlocation)
                        .padding(5)
                    Spacer()
                }
//                .border(.green)
            }
        }
    }
}

#Preview {
    UserInfoView(avatar: "person.crop.circle", greetUser: "Hello Artharv", redpin: "redpin", userlocation: "Pune, Maharashtra,India")
}
