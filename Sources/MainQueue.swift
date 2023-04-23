@propertyWrapper
struct MainQueue<T> {
    private var value: T

    init(wrappedValue: T) {
        self.value = wrappedValue
    }

    var wrappedValue: T {
        get {
            assert(Thread.isMainThread)
            return value
        }
        set {
            DispatchQueue.main.async {
                self.value = newValue
            }
       }
}

// Usage:
class ViewModel {
@MainQueue var isLoading: Bool = false
}