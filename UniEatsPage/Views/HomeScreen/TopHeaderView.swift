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
    var logoName: String
    var rightIconName: String
    var fontName: String = "DancingScript-Bold"
    var fontSize: CGFloat = 28
    var body: some View {
        HStack {
            HStack {
                Image(logoImageName)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 50, height: 70)
                    .padding(.leading, 5)
                Text(logoName)
                    .font(.custom(fontName, size: fontSize))
                    .foregroundColor(.black)
                    .fontWeight(.bold)
            }
            Spacer()
            NavigationLink(destination: FavoriteRestaurants()){
                Image(rightIconName)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 50, height: 70)
                    .padding(.trailing, 8)
            }
        }
    }
}

#Preview {
    TopHeaderView(
        logoImageName: "unieatslogo", logoName: "Swiz King", rightIconName: "unieatsheart"
    )
}
