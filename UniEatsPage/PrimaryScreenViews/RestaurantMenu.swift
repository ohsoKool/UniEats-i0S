import SwiftUI

struct RestaurantMenu: View {
    var categories: [String] = ["Starters", "Meals", "Combos", "Deserts", "Drinks"]
    var restaurantName: String
    var restaurantLocation: String
    var restaurantRating: String
    var dishNames: [String] = ["Chicken 65", "Burger", "Pizza", "Pasta", "Tacos", "FrenchFries"]
    var dishPrices: [Int] = [100, 90, 180, 230, 120, 60]
    var filters: [String] = ["Veg", "Non Veg", "Healthy", "Egg", "Recommended"]
    var dishImages: [String] = ["chicken65", "burger2", "pasta", "pizza", "tacos", "frenchfries"]
    
    @ObservedObject var cart: CartModel
    
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
                
                    FilterChips(filters: filters)
                
                    DishList(
                        dishNames: dishNames,
                        dishPrices: dishPrices,
                        dishImages: dishImages,
                        cart: cart
                    )
                    .cornerRadius(24)
                }
//                VStack {
//                    Spacer()
//                    BottomNavbarView(cart: cart) // pass the cart down
//                }
                .navigationTitle("Menu")
            }
        }
//        .navigationBarBackButtonHidden()
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
