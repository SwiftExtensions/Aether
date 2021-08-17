//
//  LayoutBinding.swift
//  
//
//  Created by Александр Алгашев on 17.08.2021.
//

import UIKit

/// The template to create a constraint.
public struct LayoutBinding {
    /// The attribute of the view.
    public let attribute: NSLayoutConstraint.Attribute
    /// The relationship between the view and the item.
    public let relation: NSLayoutConstraint.Relation
    /// The view for the right side of the constraint.
    public let item: Item
    /// The attribute of the item.
    public let itemAttribute: NSLayoutConstraint.Attribute
    /// The constant multiplied with the attribute on the view
    /// as part of getting the modified attribute.
    public let multiplier: CGFloat
    /// The constant added to the multiplied attribute value on the view
    /// to yield the final modified attribute.
    public let constant: CGFloat
    /// The layout priority.
    public let priority: UILayoutPriority
    /// The active state of the constraint.
    public let isActive: Bool
    
    
}
