import XCTest
@testable import Aether

final class AetherTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(Aether().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
