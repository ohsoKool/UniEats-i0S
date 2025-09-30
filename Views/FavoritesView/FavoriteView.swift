import SwiftUI

struct FavoritesDishesView: View {
    var favoriteDishes: [Dish] = [
        Dish(name: "Burger", price: 120, description: "Juicy grilled burger with cheese & lettuce", image: "burger2", restaurant: "McBurgerz"),
        Dish(name: "Pizza", price: 180, description: "Thin crust pizza with mozzarella & basil", image: "pizza", restaurant: "Pizza Corner"),
        Dish(name: "Nachos", price: 150, description: "Crispy nachos topped with jalapenos & cheese", image: "tacos", restaurant: "SnackHub"),
        Dish(name: "Pasta", price: 200, description: "Creamy Alfredo pasta with garlic bread", image: "pasta", restaurant: "Italiano Café")
    ]

    var body: some View {
        NavigationStack {
            ZStack {
                LinearGradientView()

                VStack(alignment: .leading) {
                    FavoritesTopBar()

                    List {
                        ForEach(favoriteDishes) { dish in
                            FavoriteDishCard(dish: dish)
                        }
                    }
                    .listStyle(.plain)
                    .cornerRadius(24)
                }
            }
            .navigationTitle("Favorites")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    FavoritesDishesView()
}

// MARK: - Card

struct FavoriteDishCard: View {
    var dish: Dish

    var body: some View {
        DishCard(
            dish: dish,
            cart: CartModel()
        )
        .padding()
        .overlay(
            RoundedRectangle(cornerRadius: 25)
                .fill(Color.gray.opacity(0.1))
                .stroke(Color.gray.opacity(0.2))
        )
    }
}

// MARK: - Top Bar

struct FavoritesTopBar: View {
    var body: some View {
        HStack {
            Text("Favorite Dishes")
                .font(.title2)
                .foregroundColor(.black)

            Spacer()

            Button("Favorite Restaurants") {
                // TODO: navigate to Favorite Restaurants screen
            }
            .font(.title2)
            .foregroundColor(.black)
        }
        .padding()
    }
}
