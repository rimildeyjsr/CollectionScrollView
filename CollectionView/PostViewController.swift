//
//  PostViewController.swift
//  CollectionView
//
//  Created by Rimil Dey on 06/12/17.
//  Copyright © 2017 Rimil Dey. All rights reserved.
//


import UIKit

class PostViewController: UIViewController {
    
    // MARK: - View Did Load
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let indexPath = selectedIndex {
            let selectedRow = model.posts[indexPath.row]
            
            imageView.image = UIImage(named: selectedRow["image"]!)
            likesLabel.text = "♥︎ \(selectedRow["likes"]!) likes"
            postLabel.text = selectedRow["description"]
            tagsLabel.text = selectedRow["tags"]
            title = selectedRow["title"]
        }
    }
    
    // MARK: - Properties
    var selectedIndex: IndexPath?
    
    // MARK: - Outlets
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var likesLabel: UILabel!
    @IBOutlet weak var postLabel: UILabel!
    @IBOutlet weak var tagsLabel: UILabel!
    
    
}

