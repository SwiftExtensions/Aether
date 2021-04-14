import XCTest
@testable import Aether

final class UIViewSizeConstraintsTest: XCTestCase {
    var sut: NSLayoutConstraint!
    
    func test_setDefaultWidthConstraint_createsCorrectDefalutValues() {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        let width: CGFloat = 10
        
        self.sut = view.setConstraint(width: width)
        
        XCTAssertEqual(self.sut.relation, .equal)
        XCTAssertEqual(self.sut.priority, .required)
        XCTAssertTrue(self.sut.isActive)
    }

    
}
