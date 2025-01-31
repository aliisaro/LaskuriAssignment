import Foundation

class Counter: ObservableObject {
    @Published var lowerBound: Int
    @Published var upperBound: Int
    @Published var value: Int = 0
    @Published var step: Int = 1
    @Published var ops: Int = 0

    init() {
        lowerBound = 0
        upperBound = 5
        value = lowerBound
    }
    
    init(lowerBound: Int, upperBound: Int) {
        self.lowerBound = lowerBound
        self.upperBound = upperBound
        self.value = lowerBound
    }

    func increment() {
        value += step
        ops += 1
        
        if value > upperBound {
            value = lowerBound
        }
    }
    
    func decrement() {
        value -= step
        ops += 1
        
        if value < lowerBound {
            value = upperBound
        }
    }

    func setStep(_ number: Int) {
        if number > upperBound {
            step = 1
        } else {
            step = number
        }
    }
}
