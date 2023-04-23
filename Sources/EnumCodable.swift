import Foundation

@propertyWrapper
struct EnumCodable<Enum: RawRepresentable>: Codable where Enum.RawValue: Codable {
    var wrappedValue: Enum

    init(wrappedValue: Enum) {
        self.wrappedValue = wrappedValue
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(Enum.RawValue.self)
        wrappedValue = Enum(rawValue: rawValue)!
    }

    func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        try container.encode(wrappedValue.rawValue)
    }
}

// Usage:
enum Fruit: String {
    case apple, banana, orange
}

struct GroceryItem: Codable {
    @EnumCodable var fruit: Fruit
}
