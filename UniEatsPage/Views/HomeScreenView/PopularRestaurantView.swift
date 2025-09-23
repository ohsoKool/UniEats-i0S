import SwiftUI

struct PopularRestaurantsView: View {
    @State private var animateList: Bool = false
    var horizontalList: [Int] = [1, 2, 3, 4, 5]

    var body: some View {
        VStack(spacing: 0) {
            // Header
            HStack {
                Text("Popular Restaurants")
                    .font(.title3)
                    .fontWeight(.medium)
                    .opacity(animateList ? 1 : 0)
                    .offset(x: animateList ? 0 : -40)
//                    .padding()

                Spacer()

                Image(systemName: "arrow.up.right")
                    .foregroundColor(.orange)
                    .padding(8)
                    .overlay(
                        Circle()
                            .stroke(.gray.opacity(0.5))
                    )
                    .opacity(animateList ? 1 : 0)
                    .offset(x: animateList ? 0 : 40)
            }
            .padding()

            // Horizontal scroll
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 12) {
                    ForEach(horizontalList, id: \.self) { _ in
                        RestaurantCardView()
                            .opacity(animateList ? 1 : 0.8)
                            .offset(x: animateList ? 0 : -60)
                            .animation(.easeInOut(duration: 4).repeatForever(autoreverses: true), value: animateList)
                    }
                }
            }
        }
        .overlay(
            RoundedRectangle(cornerRadius: 36)
                .stroke(.gray.opacity(0.4), lineWidth: 1)
        )
        .onAppear { animateList = true }
    }
}

#Preview {
    PopularRestaurantsView()
        .padding(.horizontal)
}
