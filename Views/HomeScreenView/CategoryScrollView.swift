import SwiftUI

struct CategoryScrollView: View {
    @State private var selectedCuisine: String = "Chinese"
    var cuisines: [String] = ["Chinese", "Indian", "Italian", "Mexican", "Thai", "Greek", "French"]
    @Namespace private var animationNamespace

    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHStack(spacing: 12) {
                ForEach(cuisines, id: \.self) { cuisine in
                    Text(cuisine)
                        .padding(.vertical, 8)
                        .padding(.horizontal, 16)
                        .background(
                            ZStack {
                                if cuisine == selectedCuisine {
                                    RoundedRectangle(cornerRadius: 20)
                                        .fill(Color.orange.opacity(0.3))
                                        .matchedGeometryEffect(id: "highlight", in: animationNamespace)
                                }
                            }
                        )
                        .overlay(
                            RoundedRectangle(cornerRadius: 20)
                                .stroke(Color.black, lineWidth: 1)
                        )
                        .cornerRadius(20)
                        .onTapGesture {
                            withAnimation(.easeInOut(duration: 0.3)) {
                                selectedCuisine = cuisine
                            }
                        }
                }
            }
        }
    }
}

#Preview {
    CategoryScrollView()
}
