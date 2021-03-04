//
//  HiglitsCollectionViewCell.swift
//  Instagram
//
//  Created by Artur Gedakyan on 03.03.2021.
//

import UIKit

class MyCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var storyTextLabel: UILabel!
    @IBOutlet weak var storyImage: UIImageView!
    
    static let id = "MyCollectionViewCell"
        
    static func nib() -> UINib {
        UINib(nibName: "MyCollectionViewCell", bundle: nil)
    }
    
    override func awakeFromNib() {
        superview?.awakeFromNib()
    }
    
    public func configure(model: Menu) {
        storyTextLabel.text = model.name
        storyImage.image = UIImage(named: model.imageName)
    }
}
 
