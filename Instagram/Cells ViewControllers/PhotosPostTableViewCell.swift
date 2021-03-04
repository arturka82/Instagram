//
//  PhotosPostTableViewCell.swift
//  Instagram
//
//  Created by Artur Gedakyan on 04.03.2021.
//

import UIKit

class PhotosPostTableViewCell: UITableViewCell {
    
    
    @IBOutlet var collectionView: UICollectionView!
    
    static let id = "PhotosPostTableViewCell"
    
    
    var models = [Posti]()
    func configurate(models: [Posti]) {
        self.models = models
        collectionView.reloadData()
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()

        collectionView.register(PhotosPostCollectionViewCell.nib(), forCellWithReuseIdentifier: PhotosPostCollectionViewCell.id)
        collectionView.delegate = self
        collectionView.dataSource = self
        models.append(Posti(posti: "head4"))
        models.append(Posti(posti: "head4"))
        models.append(Posti(posti: "head4"))
        
        
    }
    
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
    }
    static func nib() -> UINib {
        let unibLocal = UINib(nibName: "PhotosPostTableViewCell", bundle: nil)
        
        return unibLocal
    }
}

extension PhotosPostTableViewCell: UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    
   
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        models.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: PhotosPostCollectionViewCell.id, for: indexPath) as! PhotosPostCollectionViewCell
        cell.configure(model: models[indexPath.row])
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        CGSize(width: collectionView.bounds.width/3 - 0.8, height: collectionView.bounds.width/3)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        1
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        1
    }
}
