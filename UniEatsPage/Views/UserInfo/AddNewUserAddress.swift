//
//  UserAddAddressView.swift
//  UniEatsPage
//
//  Created by Rishikesh Gunda on 9/19/25.
//
import SwiftUI

struct AddNewUserAddress: View {
    var body: some View {
        VStack(spacing: 30) {
            VStack(alignment: .center) {
                Text("Add New Address")
//                    .font(.largeTitle)
//                    .padding()
//                Text("Your Location")
//                    .font(.headline)
//                    .padding()
                InputDataFieldView(placeholderText: "State")
                InputDataFieldView(placeholderText: "District")
                InputDataFieldView(placeholderText: "Society / Street Name")
                InputDataFieldView(placeholderText: "House No / Flat No")
                InputDataFieldView(placeholderText: "Pincode")
            }
//            Spacer()
            HStack(spacing: 12) {
                SaveButtonView(buttonName: "Home")
                SaveButtonView(destructiveActionButton: true, buttonName: "Work")
                SaveButtonView(destructiveActionButton: true, buttonName: "Other")
            }
        }
        .navigationTitle("Add New Address")
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    AddNewUserAddress()
}
