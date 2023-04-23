# SwiftPropertyWrappers
Property wrappers in Swift are a feature that allows you to add a ayer of separation between the code that manages the storage, access, and modification of a property and the code that defines the property itself.

### What are property wrappers?
By encapsulating common behaviors and patterns into a property wrapper, you can reuse that logic across multiple properties and structures, making your code more readable and maintainable.

### Benefits of using property wrappers
- Code reusability: Property wrappers encapsulate common behaviors and logic, making it easy to reuse them across multiple properties and structures without duplicating code.
- Separation of concerns: Property wrappers separate the logic of managing property access and modification from the logic of the property's actual definition. This separation of concerns makes your code easier to understand, maintain, and test.
- Consistency: Using property wrappers can help you enforce consistent patterns and behaviors across your codebase, making it easier for other developers to understand and maintain your code.

#### UserDefaults
Use to abstract away the boilerplate code for reading and writing to UserDefaults.

#### OmitNil
Use in specific scenarios where you need more control over the encoding and decoding process.

#### Clamping
Use to enforce a value range for a property. When the wrapped property is set, the value will be clamped to the specified range, ensuring that it stays within the defined bounds.

#### Observable
Use to create observable properties that notify listeners when their value changes.

#### Atomic
Use to create thread-safe properties that can only be accessed and modified atomically.

#### Throttled
Useful for properties that shouldn't be updated too frequently.

#### LogChanges
Logs changes made to the wrapped properties, along with the file, function, and line number.
