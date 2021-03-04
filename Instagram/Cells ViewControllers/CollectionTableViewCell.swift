//
//  HiglitsTableViewCell.swift
//  Instagram
//
//  Created by Artur Gedakyan on 03.03.2021.
//

import UIKit

class CollectionTableViewCell: UITableViewCell {
    
    static let id = "CollectionTableViewCell"

    @IBOutlet var collectionView: UICollectionView!
    var models = [Menu]()
    
    func configurate(models: [Menu]) {
        self.models = models
        collectionView.reloadData()
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        
        collectionView.register(MyCollectionViewCell.nib(), forCellWithReuseIdentifier: MyCollectionViewCell.id)
        collectionView.delegate = self
        collectionView.dataSource = self
        
        models.append(Menu(text: "qunem", imageName: "head3"))
        models.append(Menu(text: "AaaAA", imageName: "head3"))
        models.append(Menu(text: "AAAA", imageName: "head3"))

    }



    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    static func nib() -> UINib {
        let inibLocal = UINib(nibName: "CollectionTableViewCell", bundle: nil)
        
        return inibLocal
    }
}

extension CollectionTableViewCell: UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        models.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: MyCollectionViewCell.id, for: indexPath) as! MyCollectionViewCell
        cell.configure(model: models[indexPath.row])
        return cell
    }
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
//        CGSize(width: 120, height: 120)
//    }
    
    
    
}
