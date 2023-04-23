@propertyWrapper
struct OmitNil<T: Codable>: Codable {
    var wrappedValue: T?
    
    init(wrappedValue: T?) {
        self.wrappedValue = wrappedValue
    }
    
    init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        wrappedValue = try? container.decode(T.self)
    }
    
    func encode(to encoder: Encoder) throws {
        if let wrappedValue = wrappedValue {
            var container = encoder.singleValueContainer()
            try container.encode(wrappedValue)
        }
    }
}

// Usage:
struct Person: Codable {
    let name: String
    @OmitNil var age: Int?
}

let person = Person(name: "John Doe", age: nil)
let encoder = JSONEncoder()
let data = try encoder.encode(person)

let jsonString = String(data: data, encoding: .utf8)!
print(jsonString) // Output: {"name":"John Doe"}