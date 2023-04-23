@propertyWrapper
class Observable<Value> {
    var wrappedValue: Value {
        didSet {
            onChange?(wrappedValue)
        }
    }

    var onChange: ((Value) -> Void)?
    
    init(wrappedValue: Value) {
        self.wrappedValue = wrappedValue
    }
}

// Usage:
class ViewModel {
    @Observable var username: String = ""
    
    init() {
        _username.onChange = { newValue in
            print("Username changed to \(newValue)")
        }
    }
}