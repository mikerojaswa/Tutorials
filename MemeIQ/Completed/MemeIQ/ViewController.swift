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
        collectionView.dataSource = self
        collectionView.delegate = self
        collectionView.register(UINib.init(nibName: "MemeCell", bundle: nil), forCellWithReuseIdentifier: "MemeCell")
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return data.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "MemeCell", for: indexPath) as! MemeCell
        cell.configure(with: data[indexPath.row])
        return cell
    }
}

