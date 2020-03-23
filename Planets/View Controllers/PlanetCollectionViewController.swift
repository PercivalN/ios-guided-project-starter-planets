//
//  PlanetCollectionViewController.swift
//  Planets
//
//  Created by Percy Ngan on 8/22/19.
//  Copyright © 2019 Lambda Inc. All rights reserved.
//

import UIKit

class PlanetCollectionViewController: UICollectionViewController {
    
    
    
    let planetController = PlanetController()


    // MARK: UICollectionViewDataSource


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return planetController.planets.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "PlanetCell", for: indexPath) as? PlanetCollectionViewCell else { return UICollectionViewCell() }
    
        // Configure the cell
        let planet = planetController.planets[indexPath.item]
        cell.imageView.image = planet.image
        cell.textlLabel.text = planet.name
        
        return cell
    }

    

}