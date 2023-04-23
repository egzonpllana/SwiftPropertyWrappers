@propertyWrapper
struct Percent<T: Numeric & Comparable> {
    private var value: T

    init(wrappedValue: T) {
        self.value = min(max(wrappedValue, 0), 100)
    }

    var wrappedValue: T {
        get { value }
        set { value = min(max(newValue, 0), 100) }
    }
}

// Usage:
struct Task {
    @Percent var progress: Int
}
