//
//  AppDelegate.swift
//  Cully Example
//
//  Created by Deepak Mantena
//  Copyright © 2019 Stay Kids. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

	var window: UIWindow?

	func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
		let window = UIWindow(frame: UIScreen.main.bounds)
		window.rootViewController = ViewController(nibName: nil, bundle: nil)
		window.makeKeyAndVisible()
		self.window = window
		return true
	}

}

