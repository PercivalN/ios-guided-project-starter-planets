//
//  SettingsViewController.swift
//  Planets
//
//  Created by Percy Ngan on 8/22/19.
//  Copyright © 2019 Lambda Inc. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

	// MARK: - IBOutlets

	@IBOutlet weak var shouldShowPlutoSwitch: UISwitch!

	// MARK: - View Lifecycle

	override func viewWillAppear(_ animated: Bool) {
		super.viewWillAppear(animated)
		updateViews()
	}


	// MARK: - Actions

	@IBAction func changeShouldShowPluto(_ sender: UISwitch){
		// area on the phone where one can store key value items
		let userDefaults = UserDefaults.standard
		//associating ShouldShowPluto to the key in the UserDefaults area on the phone
		userDefaults.set(sender.isOn, forKey: .shouldShowPlutoKey)
	}

	// MARK: - Private

	private func updateViews() {
		let userDefaults = UserDefaults.standard
		shouldShowPlutoSwitch.isOn = userDefaults.bool(forKey: .shouldShowPlutoKey)
	}
}
