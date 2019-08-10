//
//  Collection+Cully.swift
//  Cully
//
//  Created by Deepak Mantena
//  Copyright © 2019 Stay Kids. All rights reserved.
//

import UIKit

extension Collection where Element: NSLayoutConstraint {

	public typealias KeyedConstraints = [NSLayoutConstraint.Attribute: NSLayoutConstraint]

	/// An `NSLayoutConstraint.Attribute` keyed dictionary of `NSLayoutConstraint`s with Cully
	public var keyed: KeyedConstraints {
		return reduce(into: KeyedConstraints(), { (attributedConstraints, constraint) in
			attributedConstraints[constraint.firstAttribute] = constraint
		})
	}

}
