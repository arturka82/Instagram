//
//  StoriTableViewCell.swift
//  Instagram
//
//  Created by Artur Gedakyan on 01.03.2021.
//

import UIKit

class StoriTableViewCell: UITableViewCell {
    
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var tableView: UITableView!

    @IBOutlet var userImageView: UIImageView!
    
    @IBOutlet var firstStoryImage: UIImageView!
    @IBOutlet var secondStoryImage: UIImageView!
    @IBOutlet var thirdStoryImage: UIImageView!
    @IBOutlet var fourStoryImage: UIImageView!
    @IBOutlet var fiveStoryImage: UIImageView!
    @IBOutlet var sixStoryImage: UIImageView!



    static let id = "StoriTableViewCell"
    
    static func nib() -> UINib {
        UINib(nibName: "StoriTableViewCell", bundle: nil)
    }
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    func congigure(model: InstaStory) {
        userImageView.image = UIImage(named: model.userImageView)
        secondStoryImage.image = UIImage(named: model.secondStoryImage)
        thirdStoryImage.image = UIImage(named: model.thirdStoryImage)
        fourStoryImage.image = UIImage(named: model.fourStoryImage)
    }
    
    func createScroll() {
        scrollView.contentSize = CGSize(width: UIScreen.main.bounds.width * 2, height: 400)
        scrollView.frame = CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: 400)
    }
    
    func createImage() {
        firstStoryImage.layer.borderWidth = 2
        firstStoryImage.layer.borderColor = CGColor(red: 128, green: 0, blue: 128, alpha: 1)
        firstStoryImage.layer.masksToBounds = true
        //MARk: Second
        secondStoryImage.layer.borderWidth = 2
        secondStoryImage.layer.borderColor = CGColor(red: 128, green: 0, blue: 128, alpha: 1)
        secondStoryImage.layer.masksToBounds = true
        
        thirdStoryImage.layer.borderWidth = 2
        thirdStoryImage.layer.borderColor = CGColor(red: 128, green: 0, blue: 128, alpha: 1)
        thirdStoryImage.layer.masksToBounds = true
        
        fourStoryImage.layer.borderWidth = 2
        fourStoryImage.layer.borderColor = CGColor(red: 128, green: 0, blue: 128, alpha: 1)
        fourStoryImage.layer.masksToBounds = true
        
        fourStoryImage.layer.borderWidth = 2
        fourStoryImage.layer.borderColor = CGColor(red: 128, green: 0, blue: 128, alpha: 1)
        fourStoryImage.layer.masksToBounds = true
        
        fiveStoryImage.layer.borderWidth = 2
        fiveStoryImage.layer.borderColor = CGColor(red: 128, green: 0, blue: 128, alpha: 1)
        fiveStoryImage.layer.masksToBounds = true
        
        sixStoryImage.layer.borderWidth = 2
        sixStoryImage.layer.borderColor = CGColor(red: 128, green: 0, blue: 128, alpha: 1)
        sixStoryImage.layer.masksToBounds = true
    }
}

