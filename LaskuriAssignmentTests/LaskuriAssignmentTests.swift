//
//  LaskuriAssignmentTests.swift
//

import XCTest
@testable import LaskuriAssignment

final class LaskuriAssignmentTests: XCTestCase {

    func testConstructor1() throws {
        let c = Counter()
        XCTAssert(c.lowerBound == 0 && c.upperBound == 5 && c.step == 1 && c.ops == 0 && c.value == c.lowerBound)
    }
    
    func testConstructor2() throws {
        let c = Counter(lowerBound: 3,upperBound: 7)
        XCTAssert(c.lowerBound == 3 && c.upperBound == 7 && c.step == 1 && c.ops == 0 && c.value == c.lowerBound)
    }
    
    func testSetStep1() throws {
        let c = Counter()
        c.setStep(3)
        XCTAssert(c.lowerBound == 0 && c.upperBound == 5 && c.step == 3 && c.ops == 0)
    }
    
    func testSetStep2() throws {
        let c = Counter()
        c.setStep(6)
        XCTAssert(c.lowerBound == 0 && c.upperBound == 5 && c.step == 1 && c.ops == 0)
    }

    func testinc1() throws {
        let c = Counter()
        c.increment()
        XCTAssert(c.value == 1)
    }
    
    func testinc2() throws {
        let c = Counter()
        for _ in 1...6 {
            c.increment()
        }
        XCTAssert(c.value == 0)
    }
    
    func testinc3() throws {
        let c = Counter(lowerBound: 3, upperBound: 5)
        for _ in 1...4 {
            c.increment()
        }
        XCTAssert(c.value == 4)
    }
    
    func testinc4() throws {
        let c = Counter(lowerBound: 3, upperBound: 6)
        c.setStep(2)
        for _ in 1...3 {
            c.increment()
        }
        XCTAssert(c.value == 5)
    }
    
    func testdec1() throws {
        let c = Counter()
        c.decrement()
        XCTAssert(c.value == c.upperBound)
    }
    
    func testdec2() throws {
        let c = Counter()
        for _ in 1...6 {
            c.decrement()
        }
        XCTAssert(c.value == 0)
    }
    
    func testdec3() throws {
        let c = Counter(lowerBound: 3, upperBound: 5)
        for _ in 1...4 {
            c.decrement()
        }
        XCTAssert(c.value == 5)
    }
    
    func testdec4() throws {
        let c = Counter(lowerBound: 3, upperBound: 6)
        c.setStep(2)
        for _ in 1...3 {
            c.decrement()
        }
        XCTAssert(c.value == 5)
    }
    
    func testOps1() throws {
        let c = Counter(lowerBound: 3, upperBound: 6)
        c.setStep(2)
        for _ in 1...3 {
            c.decrement()
        }
        XCTAssert(c.ops == 3)
    }
}
