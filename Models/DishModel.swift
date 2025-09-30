import SwiftUI

struct Dish: Identifiable {
    let id = UUID()
    let name: String
    let price: Int
    let description: String
    let image: String
    let restaurant: String
}
