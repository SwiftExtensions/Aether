import XCTest
@testable import Aether

// MARK: - Height Constraint

extension UIViewSizeConstraintsTest {
    func test_setDefaultHeightConstraint_createsCorrectDefalutValues() {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        let height: CGFloat = 10
        
        self.sut = view.setConstraint(height: height)
        
        XCTAssertEqual(self.sut.relation, .equal)
        XCTAssertEqual(self.sut.priority, .required)
        XCTAssertTrue(self.sut.isActive)
    }
    
    func test_setHeightConstraint_createsCorrectValues() {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        let height: CGFloat = 10
        let relation: NSLayoutConstraint.Relation = .greaterThanOrEqual
        let priority: UILayoutPriority = .defaultHigh
        let isActive = false
        
        self.sut = view.setConstraint(
            height: height,
            relatedBy: relation,
            priority: priority,
            isActive: isActive)
        
        XCTAssertEqual(self.sut.constant, height)
        XCTAssertEqual(self.sut.relation, relation)
        XCTAssertEqual(self.sut.priority, priority)
        XCTAssertEqual(self.sut.isActive, isActive)
    }

    
}
