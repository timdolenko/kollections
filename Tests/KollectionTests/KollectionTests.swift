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
    
    func testAssociate() throws {
        XCTAssertEqual(
            [72, 69, 76, 76, 79].associate { ($0, $0.toChar) },
            [72:"H", 69:"E", 76:"L", 79:"O"]
        )
    }
    
    func testAssociateWith() throws {
        XCTAssertEqual(
            greetings.associateWith { $0.count },
            [
                "Hi": 2,
                "Привет": 6,
                "Hallo": 5,
                "Привіт": 6
            ]
        )
    }
    
    func testAssociateBy() throws {
        XCTAssertEqual(
            greetings.associateBy { $0.first! },
            [
                "H": "Hallo",
                "П": "Привіт",
            ]
        )
    }
}
            
fileprivate extension Int {
    var toChar: Character {
        Character(UnicodeScalar(self)!)
    }
}
