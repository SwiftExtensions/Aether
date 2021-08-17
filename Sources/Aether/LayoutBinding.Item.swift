//
//  LayoutBinding.Item.swift
//  
//
//  Created by Александр Алгашев on 17.08.2021.
//


extension LayoutBinding {
    /// The view for the right side of the constraint.
    public enum Item {
        /// The superview of view.
        case superview
        /// The view.
        case view(Any?)
    }
    
    
}
