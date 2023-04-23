@propertyWrapper
struct Clamping<Value: Comparable> {
    var value: Value
    let range: ClosedRange<Value>

    init(wrappedValue: Value, _ range: ClosedRange<Value>) {
        self.range = range
        self.value = min(max(range.lowerBound, wrappedValue), range.upperBound)
    }

    var wrappedValue: Value {
        get { value }
        set { value = min(max(range.lowerBound, newValue), range.upperBound) }
    }
}

// Usage:
struct Employee {
    @Clamping(0...100) var performanceScore: Int = 0
}

var employee = Employee(performanceScore: 50)
employee.performanceScore = 120
print(employee.performanceScore) // Output: 100 (Clamped to the upper bound)
