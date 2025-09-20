//
//  TopHeaderView.swift
//  UniEatsPage
//
//  Created by Rishikesh Gunda on 9/16/25.
//
import SwiftUI

struct TopHeaderView: View {
//    --- Parameters ---
    var logoImageName: String
    var appName: String
    var userAvatar: String
    var fontName: String = "DancingScript-Bold"
    var fontSize: CGFloat = 35
    var body: some View {
        HStack {
            HStack {
                Image(logoImageName)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 50, height: 70)
                    .padding(.leading, 5)
                Text(appName)
                    .font(.custom(fontName, size: fontSize))
                    .foregroundColor(.black)
                    .fontWeight(.bold)
            }
            Spacer()
            NavigationLink(destination: UserAddressesView()) {
                Image(systemName: userAvatar)
                    .resizable()
                    .foregroundColor(.black.opacity(1.0))
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 50, height: 70)
                    .padding(.trailing, 8)
            }
        }
    }
}

#Preview {
    TopHeaderView(
        logoImageName: "unieatslogo", appName: "UniEats", userAvatar: "person.crop.circle"
    )
}
