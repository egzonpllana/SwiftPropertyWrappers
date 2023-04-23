@propertyWrapper
struct Multiplying<T: Numeric> {
    var wrappedValue: T {
        didSet {
            wrappedValue *= factor
        }
    }

    private let factor: T

    init(wrappedValue: T, factor: T) {
        self.factor = factor
        self.wrappedValue = wrappedValue * factor
    }
}

// Usage:
struct Product {
    @Multiplying(factor: 2) var quantity: Int
}
