//
//  PhotoCollectionViewController.swift
//  CollectionView
//
//  Created by Rimil Dey on 19/11/17.
//  Copyright © 2017 Rimil Dey. All rights reserved.
//

import UIKit

private let reuseIdentifier = "photoCell"

class PhotoCollectionViewController: UICollectionViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: UICollectionViewDataSource

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return model.posts.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! PhotoCollectionViewCell
    
        cell.imageView.image = UIImage(named: model.posts[indexPath.row]["image"]!)
    
        return cell
    }

}
