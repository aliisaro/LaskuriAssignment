import Foundation

class Counter {
    var lowerBound: Int
    var upperBound: Int
    var value: Int = 0
    var step: Int = 1
    var ops: Int = 0

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
        if number > 0 {
            step = number
        }
    }
    //comment
}
