@propertyWrapper
struct LowerCase {
    private(set) var value: String = ""

    var wrappedValue: String {
        get { value }
        set { value = newValue.lowercased() }
    }
}

// Usage:
struct User {
    @LowerCase var username: String
}