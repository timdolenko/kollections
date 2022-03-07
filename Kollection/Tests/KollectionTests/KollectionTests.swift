import XCTest
@testable import Kollection

final class KollectionTests: XCTestCase {
    func testSortedBy() throws {
        XCTAssertEqual(
            ["Hi", "Привет", "Hallo", "Привіт"].sortedBy { $0.count },
            ["Hi", "Hallo", "Привет", "Привіт"]
        )
    }
    
    func testSortedByDescending() throws {
        XCTAssertEqual(
            ["Hi", "Привет", "Hallo", "Привіт"].sortedByDescending { $0.count },
            ["Привет", "Привіт", "Hallo", "Hi"]
        )
    }
}
