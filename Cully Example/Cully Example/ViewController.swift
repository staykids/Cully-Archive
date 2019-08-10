//
//  ViewController.swift
//  Cully Example
//
//  Created by Deepak Mantena
//  Copyright © 2019 Stay Kids. All rights reserved.
//

import UIKit
import Cully

class ViewController: UIViewController {

	// MARK: - Properties

	lazy var exampleView = (view as? View)

	// MARK: - Lifecycle

	override func loadView() {
		self.view = View(frame: UIScreen.main.bounds)
	}

	override func viewDidLoad() {
		super.viewDidLoad()
		exampleView?.segmentedControl.addTarget(self, action: #selector(userDidUpdate(_:)), for: .valueChanged)
	}

	// MARK: - Actions

	@objc func userDidUpdate(_ segmentedControl: UISegmentedControl) {
		guard let selectedExample = View.Example(rawValue: segmentedControl.selectedSegmentIndex) else {
			fatalError()
		}

		exampleView?.update(visible: selectedExample)
	}

}

