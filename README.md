# SwiftPropertyWrappers
Property wrappers in Swift are a feature that allows you to add a layer of separation between the code that manages the storage, access, and modification of a property and the code that defines the property itself.

### What are property wrappers?
By encapsulating common behaviors and patterns into a property wrapper, you can reuse that logic across multiple properties and structures, making your code more readable and maintainable.

### Benefits of using property wrappers
- Code reusability: Property wrappers encapsulate common behaviors and logic, making it easy to reuse them across multiple properties and structures without duplicating code.
- Separation of concerns: Property wrappers separate the logic of managing property access and modification from the logic of the property's actual definition. This separation of concerns makes your code easier to understand, maintain, and test.
- Consistency: Using property wrappers can help you enforce consistent patterns and behaviors across your codebase, making it easier for other developers to understand and maintain your code.

#### UserDefaults
Use to abstract away the boilerplate code for reading and writing to UserDefaults.\
[View source file](https://github.com/egzonpllana/SwiftPropertyWrappers/blob/main/Sources/UserDefaultsWrapper.swift)

#### OmitNil
Use in specific scenarios where you need more control over the encoding and decoding process.\
[View source file](https://github.com/egzonpllana/SwiftPropertyWrappers/blob/main/Sources/OmitNil.swift)

#### Clamping
Use to enforce a value range for a property. When the wrapped property is set, the value will be clamped to the specified range, ensuring that it stays within the defined bounds.\
[View source file](https://github.com/egzonpllana/SwiftPropertyWrappers/blob/main/Sources/Clamping.swift)

#### Observable
Use to create observable properties that notify listeners when their value changes.\
[View source file](https://github.com/egzonpllana/SwiftPropertyWrappers/blob/main/Sources/Observable.swift)

#### Atomic
Use to create thread-safe properties that can only be accessed and modified atomically.\
[View source file](https://github.com/egzonpllana/SwiftPropertyWrappers/blob/main/Sources/Atomic.swift)

#### Throttled
Useful for properties that shouldn't be updated too frequently.\
[View source file](https://github.com/egzonpllana/SwiftPropertyWrappers/blob/main/Sources/Throttled.swift)

#### LogChanges
Logs changes made to the wrapped properties, along with the file, function, and line number.\
[View source file](https://github.com/egzonpllana/SwiftPropertyWrappers/blob/main/Sources/LogChanges.swift)

#### Once
This custom property wrapper ensures that a value is only set once.\
[View source file](https://github.com/egzonpllana/SwiftPropertyWrappers/blob/main/Sources/Once.swift)

#### LowerCase
This property wrapper ensures that a string is always stored in lowercase.\
[View source file](https://github.com/egzonpllana/SwiftPropertyWrappers/blob/main/Sources/LowerCase.swift)

#### Trimmed
This property wrapper trims whitespace and newlines from a string.\
[View source file](https://github.com/egzonpllana/SwiftPropertyWrappers/blob/main/Sources/Trimmed.swift)

#### MainQueue
This property wrapper enforces that the wrapped value is always accessed from the main queue.\
[View source file](https://github.com/egzonpllana/SwiftPropertyWrappers/blob/main/Sources/MainQueue.swift)

#### EnumCodable
This property wrapper allows you to use enums with associated values in Codable structs.\
[View source file](https://github.com/egzonpllana/SwiftPropertyWrappers/blob/main/Sources/EnumCodable.swift)

#### Percent
This property wrapper enforces that a number is within the 0...100 range, representing a percentage.\
[View source file](https://github.com/egzonpllana/SwiftPropertyWrappers/blob/main/Sources/Percent.swift)

#### Multiplying
This property wrapper multiplies the wrapped value with a given factor.\
[View source file](https://www.linkedin.com/in/egzon-pllana/)

#### Note
Please let me know if you have any other useful PropertyWrapper and I can add in the list.\
Let's connect on LinkedIn: [Egzon Pllana](https://www.linkedin.com/feed/update/urn:li:activity:7055966309351661568).
