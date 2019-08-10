//
//  UIView+Cully.swift
//  Cully
//
//  Created by Deepak Mantena
//  Copyright © 2019 Stay Kids. All rights reserved.
//

import UIKit

extension UIView {

	// MARK: - Generic Constraints

	/// Constrain attribute with Cully
	@discardableResult
	public func constrain(_ attribute1: NSLayoutConstraint.Attribute, _ relation: NSLayoutConstraint.Relation, _ attribute2: NSLayoutConstraint.Attribute, of item: Any?, multiplier: CGFloat = 1, constant: CGFloat = 0, isActive: Bool = true) -> NSLayoutConstraint {
		translatesAutoresizingMaskIntoConstraints = false
		let constraint = NSLayoutConstraint(item: self, attribute: attribute1, relatedBy: relation, toItem: item, attribute: attribute2, multiplier: multiplier, constant: constant)
		constraint.isActive = isActive
		return constraint
	}

	/// Constrain attribute with Cully
	@discardableResult
	public func constrain(attribute attribute1: NSLayoutConstraint.Attribute, _ relation: NSLayoutConstraint.Relation, _ attribute2: NSLayoutConstraint.Attribute, of item: Any?, multiplier: CGFloat = 1, constant: CGFloat = 0, isActive: Bool = true) -> NSLayoutConstraint {
		translatesAutoresizingMaskIntoConstraints = false
		let constraint = NSLayoutConstraint(item: self, attribute: attribute1, relatedBy: relation, toItem: item, attribute: attribute2, multiplier: multiplier, constant: constant)
		constraint.isActive = isActive
		return constraint
	}

	// MARK: - Single Constraints

	/// Constrain left attribute with Cully
	@discardableResult
	public func constrain(left relation: NSLayoutConstraint.Relation = .equal, _ attribute: NSLayoutConstraint.Attribute, of item: Any?, multiplier: CGFloat = 1, constant: CGFloat = 0, isActive: Bool = true) -> NSLayoutConstraint {
		return constrain(.left, relation, attribute, of: item, multiplier: multiplier, constant: constant, isActive: isActive)
	}

	/// Constrain left attribute using `equal` relation with Cully
	@discardableResult
	public func constrain(leftTo attribute: NSLayoutConstraint.Attribute, of item: Any?, multiplier: CGFloat = 1, constant: CGFloat = 0, isActive: Bool = true) -> NSLayoutConstraint {
		return constrain(.left, .equal, attribute, of: item, multiplier: multiplier, constant: constant, isActive: isActive)
	}

	/// Constrain right attribute with Cully
	@discardableResult
	public func constrain(right relation: NSLayoutConstraint.Relation, _ attribute: NSLayoutConstraint.Attribute, of item: Any?, multiplier: CGFloat = 1, constant: CGFloat = 0, isActive: Bool = true) -> NSLayoutConstraint {
		return constrain(.right, relation, attribute, of: item, multiplier: multiplier, constant: constant, isActive: isActive)
	}

	/// Constrain right attribute using `equal` relation with Cully
	@discardableResult
	public func constrain(rightTo attribute: NSLayoutConstraint.Attribute, of item: Any?, multiplier: CGFloat = 1, constant: CGFloat = 0, isActive: Bool = true) -> NSLayoutConstraint {
		return constrain(.right, .equal, attribute, of: item, multiplier: multiplier, constant: constant, isActive: isActive)
	}

	/// Constrain top attribute with Cully
	@discardableResult
	public func constrain(top relation: NSLayoutConstraint.Relation, _ attribute: NSLayoutConstraint.Attribute, of item: Any?, multiplier: CGFloat = 1, constant: CGFloat = 0, isActive: Bool = true) -> NSLayoutConstraint {
		return constrain(.top, relation, attribute, of: item, multiplier: multiplier, constant: constant, isActive: isActive)
	}

	/// Constrain top attribute using `equal` relation with Cully
	@discardableResult
	public func constrain(topTo attribute: NSLayoutConstraint.Attribute, of item: Any?, multiplier: CGFloat = 1, constant: CGFloat = 0, isActive: Bool = true) -> NSLayoutConstraint {
		return constrain(.top, .equal, attribute, of: item, multiplier: multiplier, constant: constant, isActive: isActive)
	}

	/// Constrain bottom attribute with Cully
	@discardableResult
	public func constrain(bottom relation: NSLayoutConstraint.Relation, _ attribute: NSLayoutConstraint.Attribute, of item: Any?, multiplier: CGFloat = 1, constant: CGFloat = 0, isActive: Bool = true) -> NSLayoutConstraint {
		return constrain(.bottom, relation, attribute, of: item, multiplier: multiplier, constant: constant, isActive: isActive)
	}

	/// Constrain bottom attribute using `equal` relation with Cully
	@discardableResult
	public func constrain(bottomTo attribute: NSLayoutConstraint.Attribute, of item: Any?, multiplier: CGFloat = 1, constant: CGFloat = 0, isActive: Bool = true) -> NSLayoutConstraint {
		return constrain(.bottom, .equal, attribute, of: item, multiplier: multiplier, constant: constant, isActive: isActive)
	}

	/// Constrain leading attribute with Cully
	@discardableResult
	public func constrain(leading relation: NSLayoutConstraint.Relation, _ attribute: NSLayoutConstraint.Attribute, of item: Any?, multiplier: CGFloat = 1, constant: CGFloat = 0, isActive: Bool = true) -> NSLayoutConstraint {
		return constrain(.leading, relation, attribute, of: item, multiplier: multiplier, constant: constant, isActive: isActive)
	}

	/// Constrain leading attribute using `equal` relation with Cully
	@discardableResult
	public func constrain(leadingTo attribute: NSLayoutConstraint.Attribute, of item: Any?, multiplier: CGFloat = 1, constant: CGFloat = 0, isActive: Bool = true) -> NSLayoutConstraint {
		return constrain(.leading, .equal, attribute, of: item, multiplier: multiplier, constant: constant, isActive: isActive)
	}

	/// Constrain trailing attribute with Cully
	@discardableResult
	public func constrain(trailing relation: NSLayoutConstraint.Relation, _ attribute: NSLayoutConstraint.Attribute, of item: Any?, multiplier: CGFloat = 1, constant: CGFloat = 0, isActive: Bool = true) -> NSLayoutConstraint {
		return constrain(.trailing, relation, attribute, of: item, multiplier: multiplier, constant: constant, isActive: isActive)
	}

	/// Constrain trailing attribute using `equal` relation with Cully
	@discardableResult
	public func constrain(trailingTo attribute: NSLayoutConstraint.Attribute, of item: Any?, multiplier: CGFloat = 1, constant: CGFloat = 0, isActive: Bool = true) -> NSLayoutConstraint {
		return constrain(.trailing, .equal, attribute, of: item, multiplier: multiplier, constant: constant, isActive: isActive)
	}

	/// Constrain width attribute with Cully
	@discardableResult
	public func constrain(width relation: NSLayoutConstraint.Relation, _ attribute: NSLayoutConstraint.Attribute? = nil, of item: Any? = nil, multiplier: CGFloat = 1, constant: CGFloat = 0, isActive: Bool = true) -> NSLayoutConstraint {
		return constrain(.width, relation, attribute ?? .notAnAttribute, of: item, multiplier: multiplier, constant: constant, isActive: isActive)
	}

	/// Constrain width to constant with Cully
	@discardableResult
	public func constrain(width constant: CGFloat = 0, isActive: Bool = true) -> NSLayoutConstraint {
		return constrain(width: .equal, constant: constant, isActive: isActive)
	}

	/// Constrain height attribute with Cully
	@discardableResult
	public func constrain(height relation: NSLayoutConstraint.Relation, _ attribute: NSLayoutConstraint.Attribute? = nil, of item: Any? = nil, multiplier: CGFloat = 1, constant: CGFloat = 0, isActive: Bool = true) -> NSLayoutConstraint {
		return constrain(.height, relation, attribute ?? .notAnAttribute, of: item, multiplier: multiplier, constant: constant, isActive: isActive)
	}

	/// Constrain height to constant with Cully
	@discardableResult
	public func constrain(height constant: CGFloat = 0, isActive: Bool = true) -> NSLayoutConstraint {
		return constrain(height: .equal, constant: constant, isActive: isActive)
	}

	/// Constrain centerX attribute with Cully
	@discardableResult
	public func constrain(centerX relation: NSLayoutConstraint.Relation, _ attribute: NSLayoutConstraint.Attribute, of item: Any?, multiplier: CGFloat = 1, constant: CGFloat = 0, isActive: Bool = true) -> NSLayoutConstraint {
		return constrain(.centerX, relation, attribute, of: item, multiplier: multiplier, constant: constant, isActive: isActive)
	}

	/// Constrain centerX attribute using `equal` relation with Cully
	@discardableResult
	public func constrain(centerXTo attribute: NSLayoutConstraint.Attribute, of item: Any?, multiplier: CGFloat = 1, constant: CGFloat = 0, isActive: Bool = true) -> NSLayoutConstraint {
		return constrain(.centerX, .equal, attribute, of: item, multiplier: multiplier, constant: constant, isActive: isActive)
	}

	/// Constrain centerY attribute with Cully
	@discardableResult
	public func constrain(centerY relation: NSLayoutConstraint.Relation, _ attribute: NSLayoutConstraint.Attribute, of item: Any?, multiplier: CGFloat = 1, constant: CGFloat = 0, isActive: Bool = true) -> NSLayoutConstraint {
		return constrain(.centerY, relation, attribute, of: item, multiplier: multiplier, constant: constant, isActive: isActive)
	}

	/// Constrain centerY attribute using `equal` relation with Cully
	@discardableResult
	public func constrain(centerYTo attribute: NSLayoutConstraint.Attribute, of item: Any?, multiplier: CGFloat = 1, constant: CGFloat = 0, isActive: Bool = true) -> NSLayoutConstraint {
		return constrain(.centerY, .equal, attribute, of: item, multiplier: multiplier, constant: constant, isActive: isActive)
	}

	/// Constrain lastBaseline attribute with Cully
	@discardableResult
	public func constrain(lastBaseline relation: NSLayoutConstraint.Relation, _ attribute: NSLayoutConstraint.Attribute, of item: Any?, multiplier: CGFloat = 1, constant: CGFloat = 0, isActive: Bool = true) -> NSLayoutConstraint {
		return constrain(.lastBaseline, relation, attribute, of: item, multiplier: multiplier, constant: constant, isActive: isActive)
	}

	/// Constrain lastBaseline attribute using `equal` relation with Cully
	@discardableResult
	public func constrain(lastBaselineTo attribute: NSLayoutConstraint.Attribute, of item: Any?, multiplier: CGFloat = 1, constant: CGFloat = 0, isActive: Bool = true) -> NSLayoutConstraint {
		return constrain(.lastBaseline, .equal, attribute, of: item, multiplier: multiplier, constant: constant, isActive: isActive)
	}

	/// Constrain firstBaseline attribute with Cully
	@discardableResult
	public func constrain(firstBaseline relation: NSLayoutConstraint.Relation, _ attribute: NSLayoutConstraint.Attribute, of item: Any?, multiplier: CGFloat = 1, constant: CGFloat = 0, isActive: Bool = true) -> NSLayoutConstraint {
		return constrain(.firstBaseline, relation, attribute, of: item, multiplier: multiplier, constant: constant, isActive: isActive)
	}

	/// Constrain firstBaseline attribute using `equal` relation with Cully
	@discardableResult
	public func constrain(firstBaselineTo attribute: NSLayoutConstraint.Attribute, of item: Any?, multiplier: CGFloat = 1, constant: CGFloat = 0, isActive: Bool = true) -> NSLayoutConstraint {
		return constrain(.firstBaseline, .equal, attribute, of: item, multiplier: multiplier, constant: constant, isActive: isActive)
	}

	/// Constrain leftMargin attribute with Cully
	@discardableResult
	public func constrain(leftMargin relation: NSLayoutConstraint.Relation, _ attribute: NSLayoutConstraint.Attribute, of item: Any?, multiplier: CGFloat = 1, constant: CGFloat = 0, isActive: Bool = true) -> NSLayoutConstraint {
		return constrain(.leftMargin, relation, attribute, of: item, multiplier: multiplier, constant: constant, isActive: isActive)
	}

	/// Constrain leftMargin attribute using `equal` relation with Cully
	@discardableResult
	public func constrain(leftMarginTo attribute: NSLayoutConstraint.Attribute, of item: Any?, multiplier: CGFloat = 1, constant: CGFloat = 0, isActive: Bool = true) -> NSLayoutConstraint {
		return constrain(.leftMargin, .equal, attribute, of: item, multiplier: multiplier, constant: constant, isActive: isActive)
	}

	/// Constrain rightMargin attribute with Cully
	@discardableResult
	public func constrain(rightMargin relation: NSLayoutConstraint.Relation, _ attribute: NSLayoutConstraint.Attribute, of item: Any?, multiplier: CGFloat = 1, constant: CGFloat = 0, isActive: Bool = true) -> NSLayoutConstraint {
		return constrain(.rightMargin, relation, attribute, of: item, multiplier: multiplier, constant: constant, isActive: isActive)
	}

	/// Constrain rightMargin attribute using `equal` relation with Cully
	@discardableResult
	public func constrain(rightMarginTo attribute: NSLayoutConstraint.Attribute, of item: Any?, multiplier: CGFloat = 1, constant: CGFloat = 0, isActive: Bool = true) -> NSLayoutConstraint {
		return constrain(.rightMargin, .equal, attribute, of: item, multiplier: multiplier, constant: constant, isActive: isActive)
	}

	/// Constrain topMargin attribute with Cully
	@discardableResult
	public func constrain(topMargin relation: NSLayoutConstraint.Relation, _ attribute: NSLayoutConstraint.Attribute, of item: Any?, multiplier: CGFloat = 1, constant: CGFloat = 0, isActive: Bool = true) -> NSLayoutConstraint {
		return constrain(.topMargin, relation, attribute, of: item, multiplier: multiplier, constant: constant, isActive: isActive)
	}

	/// Constrain topMargin attribute using `equal` relation with Cully
	@discardableResult
	public func constrain(topMarginTo attribute: NSLayoutConstraint.Attribute, of item: Any?, multiplier: CGFloat = 1, constant: CGFloat = 0, isActive: Bool = true) -> NSLayoutConstraint {
		return constrain(.topMargin, .equal, attribute, of: item, multiplier: multiplier, constant: constant, isActive: isActive)
	}

	/// Constrain bottomMargin attribute with Cully
	@discardableResult
	public func constrain(bottomMargin relation: NSLayoutConstraint.Relation, _ attribute: NSLayoutConstraint.Attribute, of item: Any?, multiplier: CGFloat = 1, constant: CGFloat = 0, isActive: Bool = true) -> NSLayoutConstraint {
		return constrain(.bottomMargin, relation, attribute, of: item, multiplier: multiplier, constant: constant, isActive: isActive)
	}

	/// Constrain bottomMargin attribute using `equal` relation with Cully
	@discardableResult
	public func constrain(bottomMarginTo attribute: NSLayoutConstraint.Attribute, of item: Any?, multiplier: CGFloat = 1, constant: CGFloat = 0, isActive: Bool = true) -> NSLayoutConstraint {
		return constrain(.bottomMargin, .equal, attribute, of: item, multiplier: multiplier, constant: constant, isActive: isActive)
	}

	/// Constrain leadingMargin attribute with Cully
	@discardableResult
	public func constrain(leadingMargin relation: NSLayoutConstraint.Relation, _ attribute: NSLayoutConstraint.Attribute, of item: Any?, multiplier: CGFloat = 1, constant: CGFloat = 0, isActive: Bool = true) -> NSLayoutConstraint {
		return constrain(.leadingMargin, relation, attribute, of: item, multiplier: multiplier, constant: constant, isActive: isActive)
	}

	/// Constrain leadingMargin attribute using `equal` relation with Cully
	@discardableResult
	public func constrain(leadingMarginTo attribute: NSLayoutConstraint.Attribute, of item: Any?, multiplier: CGFloat = 1, constant: CGFloat = 0, isActive: Bool = true) -> NSLayoutConstraint {
		return constrain(.leadingMargin, .equal, attribute, of: item, multiplier: multiplier, constant: constant, isActive: isActive)
	}

	/// Constrain trailingMargin attribute with Cully
	@discardableResult
	public func constrain(trailingMargin relation: NSLayoutConstraint.Relation, _ attribute: NSLayoutConstraint.Attribute, of item: Any?, multiplier: CGFloat = 1, constant: CGFloat = 0, isActive: Bool = true) -> NSLayoutConstraint {
		return constrain(.trailingMargin, relation, attribute, of: item, multiplier: multiplier, constant: constant, isActive: isActive)
	}

	/// Constrain trailingMargin attribute using `equal` relation with Cully
	@discardableResult
	public func constrain(trailingMarginTo attribute: NSLayoutConstraint.Attribute, of item: Any?, multiplier: CGFloat = 1, constant: CGFloat = 0, isActive: Bool = true) -> NSLayoutConstraint {
		return constrain(.trailingMargin, .equal, attribute, of: item, multiplier: multiplier, constant: constant, isActive: isActive)
	}

	/// Constrain centerXWithinMargins attribute with Cully
	@discardableResult
	public func constrain(centerXWithinMargins relation: NSLayoutConstraint.Relation, _ attribute: NSLayoutConstraint.Attribute, of item: Any?, multiplier: CGFloat = 1, constant: CGFloat = 0, isActive: Bool = true) -> NSLayoutConstraint {
		return constrain(.centerXWithinMargins, relation, attribute, of: item, multiplier: multiplier, constant: constant, isActive: isActive)
	}

	/// Constrain centerXWithinMargins attribute using `equal` relation with Cully
	@discardableResult
	public func constrain(centerXWithinMarginsTo attribute: NSLayoutConstraint.Attribute, of item: Any?, multiplier: CGFloat = 1, constant: CGFloat = 0, isActive: Bool = true) -> NSLayoutConstraint {
		return constrain(.centerXWithinMargins, .equal, attribute, of: item, multiplier: multiplier, constant: constant, isActive: isActive)
	}

	/// Constrain centerYWithinMargins attribute with Cully
	@discardableResult
	public func constrain(centerYWithinMargins relation: NSLayoutConstraint.Relation, _ attribute: NSLayoutConstraint.Attribute, of item: Any?, multiplier: CGFloat = 1, constant: CGFloat = 0, isActive: Bool = true) -> NSLayoutConstraint {
		return constrain(.centerYWithinMargins, relation, attribute, of: item, multiplier: multiplier, constant: constant, isActive: isActive)
	}

	/// Constrain centerYWithinMargins attribute using `equal` relation with Cully
	@discardableResult
	public func constrain(centerYWithinMarginsTo attribute: NSLayoutConstraint.Attribute, of item: Any?, multiplier: CGFloat = 1, constant: CGFloat = 0, isActive: Bool = true) -> NSLayoutConstraint {
		return constrain(.centerYWithinMargins, .equal, attribute, of: item, multiplier: multiplier, constant: constant, isActive: isActive)
	}

	// MARK: - Group Constraints

	/// Constrain width and height attributes with Cully
	@discardableResult
	public func constrain(width: CGFloat, height: CGFloat, _ relation: NSLayoutConstraint.Relation = .equal, multiplier: CGFloat = 1.0, isActive: Bool = true) -> [NSLayoutConstraint] {
		return [
			constrain(width: relation, multiplier: multiplier, constant: width, isActive: isActive),
			constrain(height: relation, multiplier: multiplier, constant: height, isActive: isActive)
		]
	}

	/// Constrain centerX and centerY attributes with Cully
	@discardableResult
	public func constrain(center relation: NSLayoutConstraint.Relation, of item: Any?, multiplier: CGFloat = 1, constant: CGFloat = 0, isActive: Bool = true) -> [NSLayoutConstraint] {
		return [
			constrain(centerX: relation, .centerX, of: item, multiplier: multiplier, constant: constant, isActive: isActive),
			constrain(centerY: relation, .centerY, of: item, multiplier: multiplier, constant: constant, isActive: isActive)
		]
	}

	/// Constrain centerX and centerY attributes with Cully
	@discardableResult
	public func constrain(centerIn item: Any?, multiplier: CGFloat = 1, constant: CGFloat = 0, isActive: Bool = true) -> [NSLayoutConstraint] {
		return [
			constrain(centerX: .equal, .centerX, of: item, multiplier: multiplier, constant: constant, isActive: isActive),
			constrain(centerY: .equal, .centerY, of: item, multiplier: multiplier, constant: constant, isActive: isActive)
		]
	}

	/// Constrain top, bottom, left, and right attributes filling item with Cully
	@discardableResult
	public func constrain(fill item: Any?, multiplier: CGFloat = 1, insets: UIEdgeInsets = .zero, isActive: Bool = true) -> [NSLayoutConstraint] {
		return [
			constrain(top: .equal, .top, of: item, multiplier: multiplier, constant: insets.top, isActive: isActive),
			constrain(bottom: .equal, .bottom, of: item, multiplier: multiplier, constant: -insets.bottom, isActive: isActive),
			constrain(left: .equal, .left, of: item, multiplier: multiplier, constant: insets.left, isActive: isActive),
			constrain(right: .equal, .right, of: item, multiplier: multiplier, constant: -insets.right, isActive: isActive),
		]
	}


	/// Constrain top, bottom, left, and right attributes pinning to custom items with Cully
	@discardableResult
	public func constrain(pinTopTo itemTopAttribute: NSLayoutConstraint.Attribute, of topItem: Any? = nil, leftTo itemLeftAttribute: NSLayoutConstraint.Attribute, of leftItem: Any? = nil, bottomTo itemBottomAttribute: NSLayoutConstraint.Attribute, of bottomItem: Any? = nil, rightTo itemRightAttribute: NSLayoutConstraint.Attribute, of rightItem: Any? = nil, multipler: CGFloat = 1, constant: CGFloat = 0, insets: UIEdgeInsets = .zero, isActive: Bool = true) -> [NSLayoutConstraint] {
		// The most adventurous of the API in this framework
		return [
			constrain(.top, .equal, itemTopAttribute, of: topItem, multiplier: multipler, constant: constant + insets.top, isActive: isActive),
			constrain(.left, .equal, itemLeftAttribute, of: leftItem, multiplier: multipler, constant: constant + insets.left, isActive: isActive),
			constrain(.bottom, .equal, itemBottomAttribute, of: bottomItem, multiplier: multipler, constant: -constant - insets.bottom, isActive: isActive),
			constrain(.right, .equal, itemRightAttribute, of: rightItem, multiplier: multipler, constant: -constant - insets.right, isActive: isActive)
		]
	}

	// MARK: - Accessors

	/// Get constraint for attribute with Cully
	public func constraint(for attribute: NSLayoutConstraint.Attribute) -> NSLayoutConstraint? {
		return constraints.first(where: {$0.firstAttribute == attribute})
	}

	/// Get constraints for attributes with Cully
	public func constraints(for attributes: [NSLayoutConstraint.Attribute]) -> [NSLayoutConstraint] {
		return constraints.filter { attributes.contains($0.firstAttribute) }
	}

	// MARK: - Constraint Activation/Deactivation

	/// Deactivate constraint for attribute with Cully
	public func constraint(deactivate attribute: NSLayoutConstraint.Attribute) {
		constraints(deactivate: [attribute])
	}

	/// Deactivate constraints for attributes with Cully
	public func constraints(deactivate attributes: [NSLayoutConstraint.Attribute]) {
		NSLayoutConstraint.deactivate(constraints(for: attributes))
	}

	/// Activate constraint with Cully
	public func constraints(activate constraint: NSLayoutConstraint) {
		constraints(activate: [constraint])
	}

	/// Activate constraints with Cully
	public func constraints(activate constraints: [NSLayoutConstraint]) {
		NSLayoutConstraint.activate(constraints)
	}

}
