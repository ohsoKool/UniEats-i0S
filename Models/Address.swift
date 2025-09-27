import Foundation

struct Address: Codable, Identifiable {
    let id: UUID
    let userId: UUID
    let street: String
    let city: String
    let state: String
    let postalCode: String
    let isDefault: Bool
}
