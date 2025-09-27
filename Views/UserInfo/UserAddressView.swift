import SwiftUI

struct UserAddressesView: View {
    var addressTypes: [String] = ["Home", "Work", "College", "Family", "Other"]

    @StateObject private var addressVM = AddressViewModel()

    // Temporary userId for testing
    let userId: UUID = .init(uuidString: "679f01cc-f673-475d-abb8-5e9e1a6e397e")!

    var body: some View {
        ZStack {
            LinearGradientView()
            VStack {
                InputDataFieldView(placeholderText: "Search your saved addresses")

                List {
                    ForEach(Array(zip(addressVM.addresses, addressTypes)), id: \.0.id) { address, type in
                        UserAddressCard(
                            address: address,
                            addressType: type,
                            phoneNumber: "N/A"
                        )
                        .environmentObject(addressVM)
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
            .task {
                await addressVM.fetchUserAddresses(id: userId)
            }
        }
    }
}

#Preview {
    UserAddressesView()
}

struct UserAddressCard: View {
    @EnvironmentObject var addressVM: AddressViewModel
    var address: Address

    var addressTypeIcon: String = "house"
    var addressType: String = "Home"
    var phoneNumber: String = "99999....."

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
            Text("\(address.street), \(address.city), \(address.state), \(address.postalCode)")
                .font(.subheadline)
                .foregroundColor(.black.opacity(0.7))
                .fixedSize(horizontal: false, vertical: true) // Wraps text

            // Phone number
            Text("Phone number: \(phoneNumber)")
                .font(.subheadline)
                .foregroundColor(.black.opacity(0.7))

            // Actions (Edit / Delete)
            HStack(spacing: 30) {
                Button("EDIT") {
                    Task {
                        await addressVM.updateAddress(address: address)
                    }
                }
                .foregroundColor(.orange)

                Button("DELETE") {
                    Task {
                        await addressVM.deleteAddress(id: address.id)
                    }
                }
                .foregroundColor(.orange)
            }
            .font(.subheadline.bold())
        }
        .padding(15)
    }
}
