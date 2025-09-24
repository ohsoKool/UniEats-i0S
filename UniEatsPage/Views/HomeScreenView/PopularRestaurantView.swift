import SwiftUI

struct PopularRestaurantsView: View {
    var horizontalList: [Int] = [1, 2, 3, 4, 5]

    var body: some View {
        VStack(spacing: 0) {
            // Header
            HStack {
                Text("Popular Restaurants")
                    .font(.title3)
                    .fontWeight(.medium)

                Spacer()

                Image(systemName: "arrow.up.right")
                    .foregroundColor(.orange)
                    .padding(8)
                    .overlay(
                        Circle()
                            .stroke(.gray.opacity(0.5))
                    )
            }
            .padding()

            // Horizontal scroll
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 12) {
                    ForEach(horizontalList, id: \.self) { _ in
                        AnimatedRestaurantCardView()
                    }
                }
                .padding(.horizontal)
            }
        }
        .overlay(
            RoundedRectangle(cornerRadius: 36)
                .stroke(.gray.opacity(0.4), lineWidth: 1)
        )
    }
}

/// Separate card with independent animation state
struct AnimatedRestaurantCardView: View {
    @State private var animate = false

    var body: some View {
        RestaurantCardView()
            .opacity(animate ? 1 : 0.8)
            .offset(x: animate ? -50 : -15)
            .shadow(radius: 4)
            .onAppear {
                withAnimation(.easeInOut(duration: 4).repeatForever(autoreverses: true)) {
                    animate = true
                }
            }
    }
}

#Preview {
    PopularRestaurantsView()
//        .padding(24)
}
