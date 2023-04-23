@propertyWrapper
struct LogChanges<Value> {
    private var value: Value

    init(wrappedValue: Value) {
        self.value = wrappedValue
    }

    var wrappedValue: Value {
        get {
            return value
        }
        set {
            logChange(newValue: newValue)
            value = newValue
        }
    }

    private func logChange(newValue: Value, file: String = #file, function: String = #function, line: Int = #line) {
        let fileName = (file as NSString).lastPathComponent
        print("Property changed in \(fileName):\(line) (\(function)) - newValue: \(newValue)")
    }
}

struct UserProfile {
    @LogChanges var username: String
    @LogChanges var email: String
}

var profile = UserProfile(username: "Egzon", email: "egzon.pllana@example.com")

profile.username = "Egzon" // Output: Property changed in ... - newValue: Egzon
profile.email = "egzon.pllana@example.com" // Output: Property changed in ... - newValue: egzon.pllana@example.com
