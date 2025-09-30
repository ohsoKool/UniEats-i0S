import SwiftUI

struct DishList: View {
    var dishes: [Dish]
    @ObservedObject var cart: CartModel

    var body: some View {
        List(dishes) { dish in
            DishCard(dish: dish, cart: cart)
                .listRowBackground(Color.white)
        }
        .listStyle(.plain)
    }
}

#Preview {
    let sampleDishes = [
        Dish(name: "Chicken 65", price: 100, description: "Crispy & spicy chicken starter", image: "chicken65", restaurant: "Andhra Spice"),
        Dish(name: "Burger", price: 90, description: "Classic cheeseburger with fries", image: "burger2", restaurant: "Burger King"),
        Dish(name: "Pizza", price: 180, description: "Farmhouse pizza with fresh veggies", image: "pizza", restaurant: "Domino's"),
        Dish(name: "Pasta", price: 230, description: "Creamy Alfredo pasta", image: "pasta", restaurant: "Italian Bistro"),
        Dish(name: "Tacos", price: 120, description: "Mexican street-style tacos", image: "tacos", restaurant: "Taco Bell"),
        Dish(name: "French Fries", price: 60, description: "Golden crispy fries", image: "frenchfries", restaurant: "KFC")
    ]

    DishList(dishes: sampleDishes, cart: CartModel())
}
