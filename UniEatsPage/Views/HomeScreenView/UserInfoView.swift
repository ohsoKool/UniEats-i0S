//
//  UserInfoView.swift
//  UniEatsPage
//
//  Created by Rishikesh Gunda on 9/16/25.
//

import SwiftUI

struct UserInfoView: View {
    var greetUser: String = ""
    var redpin: String
    var userlocation: String
    var body: some View {
        HStack(spacing: 5) {
            VStack(alignment: .leading, spacing: 0) {
                Text(greetUser)
                    .font(.custom("DancingScript-Medium", size: 30))
                    .fontWeight(.medium)
                    .foregroundColor(.black)
//                    .shadow(radius: 0)
                    .padding([.horizontal, .vertical], 3)
//                    .border(.black)
                HStack(spacing: 0) {
                    Image(redpin)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 15, height: 30)
                        .padding([.horizontal], 4)
//                        .border(.black)
                    Text(userlocation)
                        .frame(alignment: .leading)
                        .font(.system(size: 18))
                        .padding(.all, 5)
                        .fontWeight(.bold)
                        .foregroundColor(.black)
//                        .border(.black)
                    Spacer()
                }
//                .border(.green)
            }
        }
    }
}

#Preview {
    UserInfoView(greetUser: "Hello Rishi :)", redpin: "redpin", userlocation: "Hyderabad,Telangana,India")
}
