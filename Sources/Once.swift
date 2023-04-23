@propertyWrapper
struct Once<Value> {
    private var _value: Value?
    private var isSet = false

    init(wrappedValue: Value?) {
        self._value = wrappedValue
    }

    var wrappedValue: Value? {
        get { _value }
        set {
            guard !isSet, let newValue = newValue else { return }
            _value = newValue
            isSet = true
        }
    }
}

// Usage:
class SettingsManager {
    @Once var serverURL: URL?
}