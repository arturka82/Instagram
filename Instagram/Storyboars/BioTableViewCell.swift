//
//  BioTableViewCell.swift
//  Instagram
//
//  Created by Artur Gedakyan on 03.03.2021.
//

import UIKit

class BioTableViewCell: UITableViewCell {
    
    @IBOutlet var userImageView: UIImageView!

    static let id = "BioTableViewCell"

    override func awakeFromNib() {
        super.awakeFromNib()

    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
    func congigure(model: BioInsta) {
        userImageView.image = UIImage(named: model.userImageView)
    }
    
    static func nib() -> UINib {
        UINib(nibName: "BioTableViewCell", bundle: nil)
    }
    
}
