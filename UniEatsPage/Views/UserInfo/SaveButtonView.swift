//
//  SaveButtonView.swift
//  UniEatsPage
//
//  Created by Rishikesh Gunda on 9/19/25.
//
import SwiftUI

struct SaveButtonView: View {
    var destructiveActionButton: Bool = false
    var buttonName: String
    var body: some View {
        Text(buttonName)
            .padding([.horizontal], 25)
            .padding([.vertical], 10)
            .font(.system(size: 20))
            .foregroundColor(destructiveActionButton ? .orange.opacity(0.7) : .white)
            .fontWeight(.heavy)
            .background(destructiveActionButton ? Color.orange.opacity(0.1) : Color.orange.opacity(0.7))
            .cornerRadius(50)
    }
}

#Preview {
    SaveButtonView(buttonName: "Save")
//    SaveButtonView(destructiveActionButton: true, buttonName: "Cancel")
}
