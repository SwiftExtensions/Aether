import UIKit

extension UIView {
    /// Creates a constraint that defines the width of the given view.
    /// - Parameters:
    ///   - width: The width of the object’s alignment rectangle.
    ///   - relation: The relation between the width value and the width of the view in a constraint.
    ///   - priority: The priority of the constraint.
    ///   - isActive: The active state of the constraint.
    /// - Returns: An `NSLayoutConstraint` object.
    ///
    /// ```
    /// // A constraint defined by standard UIKit API
    /// let view = UIView()
    /// // Required for Auto Layout
    /// view.translatesAutoresizingMaskIntoConstraints = false
    /// view.widthAnchor.constraint(equalToConstant: 100).isActive = true
    ///
    /// // Alternative
    /// let view = UIView()
    /// // Required for Auto Layout
    /// view.translatesAutoresizingMaskIntoConstraints = false
    /// view.setConstraint(width: 100)
    /// ```
    @discardableResult
    func setConstraint(
        width: CGFloat,
        relatedBy relation: NSLayoutConstraint.Relation = .equal,
        priority: UILayoutPriority = .required,
        isActive: Bool = true
    ) -> NSLayoutConstraint {
        let widthConstraint = NSLayoutConstraint(
            item: self,
            attribute: .width,
            relatedBy: relation,
            toItem: nil,
            attribute: .notAnAttribute,
            multiplier: 1,
            constant: width)
        widthConstraint.priority = priority
        widthConstraint.isActive = isActive
        
        return widthConstraint
    }
    
    /// Creates a constraint that defines the height of the given view.
    /// - Parameters:
    ///   - height: The height of the object’s alignment rectangle.
    ///   - relation: The relation between the height value and the height of the view in a constraint.
    ///   - priority: The priority of the constraint.
    ///   - isActive: The active state of the constraint.
    /// - Returns: An `NSLayoutConstraint` object.
    ///
    /// ```
    /// // A constraint defined by standard UIKit API
    /// let view = UIView()
    /// // Required for Auto Layout
    /// view.translatesAutoresizingMaskIntoConstraints = false
    /// view.heightAnchor.constraint(equalToConstant: 100).isActive = true
    ///
    /// // Alternative
    /// let view = UIView()
    /// // Required for Auto Layout
    /// view.translatesAutoresizingMaskIntoConstraints = false
    /// view.setConstraint(height: 100)
    /// ```
    @discardableResult
    func setConstraint(
        height: CGFloat,
        relatedBy relation: NSLayoutConstraint.Relation = .equal,
        priority: UILayoutPriority = .required,
        isActive: Bool = true
    ) -> NSLayoutConstraint {
        let heightConstraint = NSLayoutConstraint(
            item: self,
            attribute: .width,
            relatedBy: relation,
            toItem: nil,
            attribute: .notAnAttribute,
            multiplier: 1,
            constant: height)
        heightConstraint.priority = priority
        heightConstraint.isActive = isActive
        
        return heightConstraint
    }
    
    /// Creates a constraints that defines the width and the height of the given view.
    /// - Parameters:
    ///   - width: The width of the object’s alignment rectangle.
    ///   - height: The height of the object’s alignment rectangle.
    ///   - relation: The relation between the size values and the size of the view in a constraint.
    ///   - priority: The priority of the constraint.
    ///   - isActive: The active state of the constraint.
    /// - Returns: A tuple of  a width and a height `NSLayoutConstraint`'s objects.
    ///
    /// ```
    /// // Constraints defined by standard UIKit API
    /// let view = UIView()
    /// // Required for Auto Layout
    /// view.translatesAutoresizingMaskIntoConstraints = false
    /// view.widthAnchor.constraint(equalToConstant: 100).isActive = true
    /// view.heightAnchor.constraint(equalToConstant: 100).isActive = true
    ///
    /// // Alternative
    /// let view = UIView()
    /// // Required for Auto Layout
    /// view.translatesAutoresizingMaskIntoConstraints = false
    /// view.setConstraint(width: 100, height: 100)
    /// ```
    @discardableResult
    func setConstraints(
        width: CGFloat,
        height: CGFloat,
        relatedBy relation: NSLayoutConstraint.Relation = .equal,
        priority: UILayoutPriority = .required,
        isActive: Bool = true
    ) -> (width: NSLayoutConstraint, height: NSLayoutConstraint) {
        let widthConstraint = self.setConstraint(width: width, relatedBy: relation, priority: priority, isActive: isActive)
        let heightConstraint = self.setConstraint(height: height, relatedBy: relation, priority: priority, isActive: isActive)
        
        return (widthConstraint, heightConstraint)
    }
    
    /// Creates a constraints that defines the size of the given view.
    /// - Parameters:
    ///   - size: The size of the object’s alignment rectangle.
    ///   - relation: The relation between the first attribute and the modified second attribute in a constraint.
    ///   - priority: The priority of the constraint.
    ///   - isActive: The active state of the constraint.
    /// - Returns: A tuple of  a width and a height `NSLayoutConstraint`'s objects.
    ///
    /// ```
    /// // Constraints defined by standard UIKit API
    /// let view = UIView()
    /// // Required for Auto Layout
    /// view.translatesAutoresizingMaskIntoConstraints = false
    /// let size = CGSize(width: 100, height: 100)
    /// view.widthAnchor.constraint(equalToConstant: size.width).isActive = true
    /// view.heightAnchor.constraint(equalToConstant: size.height).isActive = true
    ///
    /// // Alternative
    /// let view = UIView()
    /// // Required for Auto Layout
    /// view.translatesAutoresizingMaskIntoConstraints = false
    /// let size = CGSize(width: 100, height: 100)
    /// view.setConstraints(size: size)
    ///
    @discardableResult
    func setConstraints(
        size: CGSize,
        relatedBy relation: NSLayoutConstraint.Relation = .equal,
        priority: UILayoutPriority = .required,
        isActive: Bool = true
    ) -> (width: NSLayoutConstraint, height: NSLayoutConstraint) {
        self.setConstraints(width: size.width, height: size.height, relatedBy: relation, priority: priority, isActive: isActive)
    }
    
    
}

