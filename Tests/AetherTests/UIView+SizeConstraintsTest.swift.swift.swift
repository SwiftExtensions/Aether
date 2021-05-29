import XCTest
@testable import Aether

// MARK: - Width & Height Constraints

extension UIViewSizeConstraintsTest {
    func test_setDefaultWidthHeightConstraint_createsCorrectDefalutValues() {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        let width: CGFloat = 10
        let height: CGFloat = 20
        
        let (widthConstraint, heightConstraint) = view.setConstraints(width: width, height: height)
        
        XCTAssertEqual(widthConstraint.relation, .equal)
        XCTAssertEqual(widthConstraint.priority, .required)
        XCTAssertTrue(widthConstraint.isActive)
        
        XCTAssertEqual(heightConstraint.relation, .equal)
        XCTAssertEqual(heightConstraint.priority, .required)
        XCTAssertTrue(heightConstraint.isActive)
    }
    
    func test_setWidthHeightConstraint_createsCorrectValues() {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        let width: CGFloat = 10
        let height: CGFloat = 20
        let relation: NSLayoutConstraint.Relation = .greaterThanOrEqual
        let priority: UILayoutPriority = .defaultHigh
        let isActive = false
        
        let (widthConstraint, heightConstraint) = view.setConstraints(
            width: width,
            height: height,
            relatedBy: relation,
            priority: priority,
            isActive: isActive)
        
        XCTAssertEqual(widthConstraint.constant, width)
        XCTAssertEqual(widthConstraint.relation, relation)
        XCTAssertEqual(widthConstraint.priority, priority)
        XCTAssertEqual(widthConstraint.isActive, isActive)
        
        XCTAssertEqual(heightConstraint.constant, height)
        XCTAssertEqual(heightConstraint.relation, relation)
        XCTAssertEqual(heightConstraint.priority, priority)
        XCTAssertEqual(heightConstraint.isActive, isActive)
    }

    
}
