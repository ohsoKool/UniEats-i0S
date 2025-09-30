import SwiftUI

struct RestaurantMenu: View {
    var categories: [String] = ["Starters", "Meals", "Combos", "Deserts", "Drinks"]
    var restaurantName: String
    var restaurantLocation: String
    var restaurantRating: String
    var dishNames: [String] = ["Chicken 65", "Burger", "Pizza", "Pasta", "Tacos", "FrenchFries"]
    var dishPrices: [Int] = [100, 90, 180, 230, 120, 60]
    var filters: [String] = ["Veg", "Non Veg", "Healthy", "Egg", "Recommended"]
    var dishImages: [String] = ["chicken65", "burger2", "pizza", "pasta", "tacos", "frenchfries"]

    @ObservedObject var cart: CartModel

    // Build dishes from parallel arrays
    var dishes: [Dish] {
        zip(zip(dishNames, dishPrices), dishImages).map { pair, img in
            let (name, price) = pair
            return Dish(
                name: name,
                price: price,
                description: "Secret recipe filled with Joy!",
                image: img,
                restaurant: restaurantName
            )
        }
    }

    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            ZStack {
                LinearGradientView()
                VStack {
                    RestaurantHeader(
                        restaurantName: restaurantName,
                        restaurantLocation: restaurantLocation,
                        restaurantRating: restaurantRating
                    )

                    FilterCategoriesView(filters: filters)

                    DishList(
                        dishes: dishes,
                        cart: cart
                    )
                    .cornerRadius(24)
                }
            }
        }
    }
}

#Preview {
    RestaurantMenu(
        restaurantName: "The Shawarma Wrapz",
        restaurantLocation: "O.U.Colony",
        restaurantRating: "4.5 ⭐",
        cart: CartModel()
    )
}
