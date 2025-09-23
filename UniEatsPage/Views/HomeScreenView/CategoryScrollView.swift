import SwiftUI

struct CategoryScrollView: View {
    var categories: [String] = ["Burger", "SeaFood", "Pizza", "Sandwich", "Pasta"]

    var highlightedCategory: String = "Burger"

    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHStack {
                ForEach(categories, id: \.self) { category in
                    Text(category)
                        .padding(.all, 10)
                        .background(
                            category == highlightedCategory ? Color.orange.opacity(0.2) : Color.clear
                        )
                        .overlay(
                            RoundedRectangle(cornerRadius: 20)
                                .stroke(Color.black, lineWidth: 1)
                        )
                        .cornerRadius(20)
                }
            }
        }
    }
}

#Preview {
    CategoryScrollView()
        .padding(.horizontal)
}
