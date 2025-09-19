//
//  SettingsView.swift
//  UniEatsPage
//
//  Created by Rishikesh Gunda on 9/17/25.
//

import SwiftUI

struct SettingsView: View {
    let userProfile = ["Name : Rishi Kesh", "Mobile : 9835473528", "Theme : White", "Privacy Policy", "About"]
    var body: some View {
        ZStack {
            LinearGradientView()
            VStack(spacing: 25) {
                UploadPictureView()
                InputDataFieldView(placeholderText: "e.g. John ", fieldName: "FullName:")
                InputDataFieldView(placeholderText: "e.g. john12@gmail.com", fieldName: "Email:")
                InputDataFieldView(placeholderText: "e.g. 9397507371", fieldName: "Mobile:")
                    .keyboardType(.phonePad)
                Spacer()
                SaveButtonView(buttonName: "save")
            }.navigationTitle("Edit Profile")
        }
    }
}

#Preview {
    SettingsView()
}
