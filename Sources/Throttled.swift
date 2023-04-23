@propertyWrapper
struct Throttled<Value> {
    private let interval: TimeInterval
    private var lastUpdated: Date = Date(timeIntervalSince1970: 0)
    private var value: Value
    
    init(wrappedValue: Value, interval: TimeInterval) {
        self.value = wrappedValue
        self.interval = interval
    }
    
    var wrappedValue: Value {
        get { value }
        set {
            let now = Date()
            if now.timeIntervalSince(lastUpdated) >= interval {
                value = newValue
                lastUpdated = now
            }
        }
    }
}

// Usage:
struct Configuration {
    @Throttled(interval: 1.0) var refreshRate: Int
}

var config = Configuration(refreshRate: 60)

config.refreshRate = 30 // This update will be accepted
config.refreshRate = 45 // This update will be ignored due to the throttling interval