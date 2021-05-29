import XCTest
@testable import Aether

// MARK: - Width Constraint

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
    
    func test_setWidthConstraint_createsCorrectValues() {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        let width: CGFloat = 10
        let relation: NSLayoutConstraint.Relation = .greaterThanOrEqual
        let priority: UILayoutPriority = .defaultHigh
        let isActive = false
        
        self.sut = view.setConstraint(
            width: width,
            relatedBy: relation,
            priority: priority,
            isActive: isActive)
        
        XCTAssertEqual(self.sut.constant, width)
        XCTAssertEqual(self.sut.relation, relation)
        XCTAssertEqual(self.sut.priority, priority)
        XCTAssertEqual(self.sut.isActive, isActive)
    }

    
}
