//
//  FollowTableViewCell.swift
//  Instagram
//
//  Created by Artur Gedakyan on 02.03.2021.
//

import UIKit

class FollowTableViewCell: UITableViewCell {

    
    @IBOutlet var userImageView: UIImageView!
    @IBOutlet var textActionLabel: UILabel!
    
    static let id = "FollowTableViewCell"
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func congigure(model: InstaRecomend) {
        userImageView.image = UIImage(named: model.userImageView)
        textActionLabel.text = model.userName
    }
    
   
    
    static func nib() -> UINib {
        UINib(nibName: "FollowTableViewCell", bundle: nil)
    }
    
}

