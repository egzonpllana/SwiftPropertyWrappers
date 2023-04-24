@propertyWrapper
class Atomic<Value> {
    private var value: Value
    private let lock = NSLock()

    init(wrappedValue: Value) {
        self.value = wrappedValue
    }

    var wrappedValue: Value {
        get {
            lock.lock()
            defer { lock.unlock() }
            return value
        }
    }

    func mutate(_ mutation: (inout Value) -> Void) {
        lock.lock()
        defer { lock.unlock() }
        mutation(&value)
    }
}

// Usage:
class Counter {
    @Atomic var value: Int = 0

    func increment() {
        _value.mutate { $0 += 1}
    }
}

// Test that Atomic is really working with thread safe
func testAtomicChange() {
        // Create an instance of the Test class

        // Define the number of iterations and concurrent threads
        let iterations = 10_000
        let numberOfThreads = 4

        // Create a concurrent dispatch queue and a dispatch group
        let concurrentQueue = DispatchQueue(label: "concurrentQueue", attributes: .concurrent)
        let dispatchGroup = DispatchGroup()

        // Perform concurrent reads and writes on the shared resource
        for _ in 0..<iterations {
            for _ in 0..<numberOfThreads {
                dispatchGroup.enter()
                concurrentQueue.async {
                    self.counter.increment()
                    dispatchGroup.leave()
                }
            }
        }

        // Wait for all tasks to finish
        dispatchGroup.wait()

        // Validate the result
        let expectedValue = iterations * numberOfThreads
        assert(counter.value == expectedValue, "Expected value: \(expectedValue), Actual value: \(counter.value)")
        print("Test passed. Expected value: \(expectedValue), Actual value: \(counter.value)")

}

    }
