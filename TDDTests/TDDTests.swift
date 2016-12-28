import XCTest
@testable import TDD

class TDDTests: XCTestCase {
    func testMultiplication() {
        let five : Money = Money.dollar(5)
        XCTAssertTrue(Money.dollar(10) == five.times(2))
        XCTAssertTrue(Money.dollar(15) == five.times(3))
    }
    
    func testEquality() {
        XCTAssertTrue(Money.dollar(5) == Money.dollar(5))
        XCTAssertFalse(Money.dollar(5) == Money.dollar(6))
        XCTAssertTrue(Money.franc(5) == Money.franc(5))
        XCTAssertFalse(Money.franc(5) == Money.franc(6))
        XCTAssertFalse(Money.franc(5) == Money.dollar(5))
    }
    
    func testFrancMultiplication() {
        let five = Money.franc(5)
        XCTAssertTrue(Money.franc(10) == five.times(2))
        XCTAssertTrue(Money.franc(15) == five.times(3))
    }
    
    func testCurrency() {
        XCTAssertEqual("USD", Money.dollar(1).currency())
    }
    
    func testDifferentClassEquality() {
        XCTAssertTrue(Money(10, "CHF") == Franc(10, "CHF"))
    }
}

