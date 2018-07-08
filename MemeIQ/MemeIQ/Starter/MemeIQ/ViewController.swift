//
//  ViewController.swift
//  MemeIQ
//
//  Created by Michael Rojas on 7/8/18.
//  Copyright © 2018 Michael Rojas. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    let data: [MemeModel] = [MemeModel(image: #imageLiteral(resourceName: "MockingSpongebob"), name: "Mocking Spongebob"),
                             MemeModel(image: #imageLiteral(resourceName: "Drake"), name: "Drake"),
                             MemeModel(image: #imageLiteral(resourceName: "DatBoi"), name: "Dat boi"),
                             MemeModel(image: #imageLiteral(resourceName: "ExpandingBrain"), name: "Expanding Brain")]

    @IBOutlet var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // -----------------------------------
        // Step 3
        // TODO: Add data source and delegate to collection view.
        // -----------------------------------
        
        // -----------------------------------
        // Step 4
        // TODO: Register the MemeCells.
        // -----------------------------------
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // -----------------------------------
        // Step 5
        // TODO: Add number of items.
        // -----------------------------------
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        // -----------------------------------
        // Step 6
        // TODO: Return the cell for each section.
        // -----------------------------------
    }
}

