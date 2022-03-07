import XCTest
@testable import Kollection

final class KollectionTests: XCTestCase {
    
    let greetings = ["Hi", "Привет", "Hallo", "Привіт"]
    
    func testSortedBy() throws {
        XCTAssertEqual(
            greetings.sortedBy { $0.count },
            ["Hi", "Hallo", "Привет", "Привіт"]
        )
    }
    
    func testSortedByDescending() throws {
        XCTAssertEqual(
            greetings.sortedByDescending { $0.count },
            ["Привет", "Привіт", "Hallo", "Hi"]
        )
    }
    
    func testAll() throws {
        XCTAssertTrue(
            greetings.all { $0.count >= 2 }
        )
    }
    
    func testAny() throws {
        XCTAssertTrue(
            greetings.any { $0.count == 2 }
        )
        
        XCTAssertFalse(
            greetings.any { $0.count == 7 }
        )
    }
}
