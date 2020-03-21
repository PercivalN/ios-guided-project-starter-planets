//
//  PlanetController.swift
//  Planets
//
//  Created by Andrew R Madsen on 8/2/18.
//  Copyright © 2018 Lambda Inc. All rights reserved.
//

import Foundation

class PlanetController {
	// convert to a computed property
	var planets: [Planet] {
		var result = [
        	Planet(name: "Mercury", imageName: "mercury"),
        	Planet(name: "Venus", imageName: "venus"),
        	Planet(name: "Earth", imageName: "earth"),
        	Planet(name: "Mars", imageName: "mars"),
        	Planet(name: "Jupiter", imageName: "jupiter"),
        	Planet(name: "Saturn", imageName: "saturn"),
        	Planet(name: "Uranus", imageName: "uranus"),
        	Planet(name: "Neptune", imageName: "neptune"),
        ]

		// Put in logic to add Pluto to the array or now
		let shouldShowPluto = UserDefaults.standard.bool(forKey: .shouldShowPlutoKey)
		if shouldShowPluto {
			result.append(Planet(name: "Pluto", imageName: "pltuo"))
		}

		return result
	}
}
