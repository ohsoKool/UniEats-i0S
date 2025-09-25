//
//  UserAddressesView.swift
//  UniEatsPage
//
//  Created by Rishikesh Gunda on 9/17/25.
//

import SwiftUI

struct UserAddressesView: View {
    var addressTypeIcon: String = "house"
    var addressTypes: [String] = ["Home", "Work", "College", "Family", "Other"]
    var phoneNumber: String = "8328285257"

    var userAddresses: [String] = [
        "123 Oak Street, Anytown, USA 12345",
        "456 Maple Avenue, Smallville, USA 67890",
        "789 Pine Lane, Bigcity, USA 10112",
        "101 Elm Court, Hamlet, USA 34567",
        "456 Maple Avenue, Smallville, USA 6789012"
    ]

    var body: some View {
        ZStack {
            LinearGradientView()
            VStack {
                InputDataFieldView(placeholderText: "Search your saved addresses")
                List {
                    ForEach(Array(zip(userAddresses, addressTypes)), id: \.0) { address, type in
                        UserAddressCard(
                            addressTypeIcon: "house",
                            addressType: type,
                            phoneNumber: phoneNumber,
                            userAddress: address
                        )
                    }
                }
                .listStyle(.plain)
                .cornerRadius(24)
                NavigationLink(destination: AddNewUserAddress()) {
                    HStack {
                        Spacer()
                        SaveButtonView(InvertedButton: true, buttonName: "ADD NEW ADDRESS")
                        Spacer()
                    }
                }
            }
            .navigationTitle("ADDRESSES")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    UserAddressesView()
}

struct UserAddressCard: View {
    var addressTypeIcon: String = "house"
    var addressType: String = "Home"
    var phoneNumber: String = "8328285257"
    var userAddress: String = "8-1-106/A/172/B, Vinobha Nagar Colony, Shaikpet, Hyderabad - 5000008, Telangana, India"

    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            // Header with icon + type
            HStack(spacing: 8) {
                Image(systemName: addressTypeIcon)
                    .foregroundColor(.gray)
                Text(addressType)
                    .font(.headline)
                    .foregroundColor(.black)
            }

            // Address text
            Text(userAddress)
                .font(.subheadline)
                .foregroundColor(.black.opacity(0.7))
                .fixedSize(horizontal: false, vertical: true) // Wraps text

            // Phone number
            Text("Phone number: \(phoneNumber)")
                .font(.subheadline)
                .foregroundColor(.black.opacity(0.7))

            // Actions (Edit / Delete)
            HStack(spacing: 30) {
                Button("EDIT") {}
                    .foregroundColor(.orange)
                Button("DELETE") {}
                    .foregroundColor(.orange)
            }
            .font(.subheadline.bold())
        }
        .padding(15)
    }
}
