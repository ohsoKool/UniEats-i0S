//
//  SettingsView.swift
//  UniEatsPage
//
//  Created by Rishikesh Gunda on 9/17/25.
//

import SwiftUI
struct SettingsView: View{
    let userProfile = ["Name : Rishi Kesh", "Mobile : 9835473528", "Theme : White", "Privacy Policy", "About"]
    var body: some View{
        VStack(alignment: .leading){
            List(userProfile, id: \.self) { option in
                Text(option)
                    .font(.title2)
                    .frame(width: 280, alignment: .leading)
                    .padding(.all, 16)
                    .background(.gray.opacity(0.2))
                    .cornerRadius(24)
            }
//            .padding(0)
        }

    }
}

#Preview{
    SettingsView()
}
