//
//  PostTableViewCell.swift
//  Instagram
//
//  Created by Artur Gedakyan on 01.03.2021.
//

import UIKit

class PostTableViewCell: UITableViewCell {
    
    @IBOutlet var userImageView: UIImageView!
    @IBOutlet var postImageView: UIImageView!
    @IBOutlet var likesImageView: UIImageView!
    @IBOutlet var likeContLabel: UILabel!
    @IBOutlet var userNameLabel: UILabel!

    

    

    static let id = "PostTableViewCell"
    
    static func nib() -> UINib {
        UINib(nibName: "PostTableViewCell", bundle: nil)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func congigure(with model: InstaPost) {
        likeContLabel.text = "\(model.likeNumber) likes"
        userNameLabel.text = model.userName
        userImageView.image = UIImage(named: model.userImageName)
        postImageView.image = UIImage(named: model.postImageName)

    }
    
}
