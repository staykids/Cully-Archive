//
//  View.swift
//  Cully Example
//
//  Created by Deepak Mantena
//  Copyright © 2019 Stay Kids. All rights reserved.
//

import UIKit
import Cully

final class View: UIView {

	// MARK: - Nested Types

	enum Example: Int, CaseIterable {
		case one = 0
		case two = 1

		var description: String {
			switch self {
			case .one: return "Example One"
			case .two: return "Example Two"
			}
		}
	}

	// MARK: - UI Elements

	let segmentedControl: UISegmentedControl = {
		let segmentedControl = UISegmentedControl(items: Example.allCases.map{$0.description})
		segmentedControl.selectedSegmentIndex = Example.one.rawValue
		return segmentedControl
	}()

	lazy var viewOne: UIView = {
		let view = UIView.withBackgroundColor(UIColor.green.withAlphaComponent(0.25))

		let whiteBox = UIView.withBackgroundColor(.white)
		let redBox = UIView.withBackgroundColor(.red)
		let yellowBox = UIView.withBackgroundColor(.yellow)
		let blueBox = UIView.withBackgroundColor(.blue)
		let orangeBox = UIView.withBackgroundColor(.orange)

		view.addSubview(whiteBox)
		whiteBox.addSubview(redBox)
		whiteBox.addSubview(yellowBox)
		whiteBox.addSubview(blueBox)
		whiteBox.addSubview(orangeBox)

		whiteBox.constrain(width: .equal, .width, of: view)
		whiteBox.constrain(height: .equal, .height, of: view, multiplier: 0.5)
		whiteBox.constrain(centerY: .equal, .centerY, of: view)

		redBox.constrain(fill: whiteBox, insets: UIEdgeInsets(top: 50, left: 50, bottom: 50, right: 100))

		yellowBox.constrain(top: .lessThanOrEqual, .bottom, of: redBox)
		yellowBox.constrain(bottom: .equal, .bottom, of: whiteBox)
		yellowBox.constrain(left: .equal, .left, of: whiteBox)
		yellowBox.constrain(right: .lessThanOrEqual, .left, of: redBox)

		blueBox.constrain(width: 105, height: 95)
		blueBox.constrain(centerX: .equal, .centerX, of: redBox, multiplier: 1.5)
		blueBox.constrain(centerY: .equal, .centerY, of: redBox, multiplier: 0.65)

		orangeBox.constrain(pinTopTo: .top, of: whiteBox, leftTo: .right, of: blueBox, bottomTo: .top, of: blueBox, rightTo: .right, of: whiteBox)

		return view
	}()

	let viewTwo: UIView = {
		let view = UIView.withBackgroundColor(UIColor.purple.withAlphaComponent(0.25))

		let segmentations = 20
		var lastRectangle: UIView?

		for segment in 0...segmentations {
			let hValue = CGFloat.random(in: 0...1)
			let sValue = CGFloat.random(in: 0...1)
			let bValue = CGFloat.random(in: 0.5...1)

			let color = UIColor(hue: hValue, saturation: sValue, brightness: bValue, alpha: 1.0)
			let rectangle = UIView.withBackgroundColor(color)

			view.addSubview(rectangle)
			rectangle.constrain(leftTo: .left, of: view)
			rectangle.constrain(rightTo: .right, of: view)
			rectangle.constrain(attribute: .height, .equal, .height, of: view, multiplier: 1/CGFloat(segmentations))

			if let lastRectange = lastRectangle {
				rectangle.constrain(top: .equal, .bottom, of: lastRectangle)
			} else {
				rectangle.constrain(top: .equal, .top, of: view)
			}

			lastRectangle = rectangle
		}

		return view
	}()

	// MARK: - Lifecycle

	override init(frame: CGRect) {
		super.init(frame: frame)
		setup()
	}

	required init?(coder aDecoder: NSCoder) {
		super.init(coder: aDecoder)
		setup()
	}

	// MARK: - Setup

	func setup() {
		backgroundColor = .white

		addSubview(segmentedControl)
		segmentedControl.constrain(top: .equal, .top, of: safeAreaLayoutGuide)
		segmentedControl.constrain(centerX: .equal, .centerX, of: self)

		insertSubview(viewOne, belowSubview: segmentedControl)
		insertSubview(viewTwo, belowSubview: segmentedControl)

		viewOne.constrain(pinTopTo: .bottom, of: segmentedControl, leftTo: .left, of: self, bottomTo: .bottom, of: self, rightTo: .right, of: self, insets: UIEdgeInsets(top: 20, left: 0, bottom: 0, right: 0))
		viewTwo.constrain(fill: viewOne)

		update(visible: .one)
	}

	// MARK: - Update

	func update(visible example: Example) {
		viewOne.isHidden = example != .one
		viewTwo.isHidden = example != .two
	}

}

fileprivate extension UIView {

	static func withBackgroundColor(_ color: UIColor) -> UIView {
		let view = UIView()
		view.backgroundColor = color
		return view
	}

}
