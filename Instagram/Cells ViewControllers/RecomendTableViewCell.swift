//
//  RecomendTableViewCell.swift
//  Instagram
//
//  Created by Artur Gedakyan on 01.03.2021.
//

import UIKit

class RecomendTableViewCell: UITableViewCell {

    @IBOutlet var userImageView: UIImageView!
    @IBOutlet var userName: UILabel!
    
    @IBOutlet weak var myScrollVIew: UIScrollView!
    
    static let id = "RecomendTableViewCell"
    
    static func nib() -> UINib {
        UINib(nibName: "RecomendTableViewCell", bundle: nil)
    }

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
        userName.text = model.userName
    }
    
    func createScroll() {
        myScrollVIew.contentSize = CGSize(width: UIScreen.main.bounds.width * 2, height: 400)
        myScrollVIew.frame = CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: 400)
    }
    
}
