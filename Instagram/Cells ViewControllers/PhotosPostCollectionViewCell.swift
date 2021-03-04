//
//  PhotosPostCollectionViewCell.swift
//  Instagram
//
//  Created by Artur Gedakyan on 04.03.2021.
//

import UIKit

class PhotosPostCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var storyImage: UIImageView!
    
    static let id = "PhotosPostCollectionViewCell"
        
    static func nib() -> UINib {
        UINib(nibName: "PhotosPostCollectionViewCell", bundle: nil)
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    public func configure(model: Posti) {
        storyImage.image = UIImage(named: model.posti)
    }
}
