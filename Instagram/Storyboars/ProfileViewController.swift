//
//  ProfileViewController.swift
//  Instagram
//
//  Created by Artur Gedakyan on 03.03.2021.
//

import UIKit

class ProfileViewController: UIViewController {
    
    
    
    @IBOutlet weak var table: UITableView!
    @IBOutlet weak var collectionView: UICollectionView!
    
    var model = [BioInsta]()
    var modelHiglits = [Menu]()
    var modelPosti = [Posti]()
    
    
    @IBOutlet weak var photosColletionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        table.dataSource = self
        table.delegate = self
        
        modelHiglits.append(Menu(text: "Kohem", imageName: "head4"))
        modelHiglits.append(Menu(text: "Vord", imageName: "head4"))
        modelHiglits.append(Menu(text: "Huita", imageName: "head4"))
        modelHiglits.append(Menu(text: "Huita", imageName: "head4"))
        
        modelPosti.append(Posti(posti: "head4"))
        modelPosti.append(Posti(posti: "head4"))
        modelPosti.append(Posti(posti: "head4"))
        modelPosti.append(Posti(posti: "head4"))
        modelPosti.append(Posti(posti: "head4"))
        modelPosti.append(Posti(posti: "head4"))
        modelPosti.append(Posti(posti: "head4"))
        modelPosti.append(Posti(posti: "head4"))
        modelPosti.append(Posti(posti: "head4"))
        
        //        table.backgroundColor = .red
        //        collectionView.delegate = self
        //        collectionView.dataSource = self
        
        table.register(BioTableViewCell.nib(), forCellReuseIdentifier: BioTableViewCell.id)
        table.register(CollectionTableViewCell.nib(), forCellReuseIdentifier: CollectionTableViewCell.id)
        table.register(PhotosPostTableViewCell.nib(), forCellReuseIdentifier: PhotosPostTableViewCell.id)
        table.showsVerticalScrollIndicator = false
        
        model.append(BioInsta(userImageView: "head4", text: "5"))
        
    }
    
    
    
    
}


extension ProfileViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: BioTableViewCell.id, for: indexPath) as! BioTableViewCell
            cell.selectionStyle = .none
            cell.congigure(model: model[indexPath.row])
            return cell
        } else if indexPath.row == 1 {
            let cell = tableView.dequeueReusableCell(withIdentifier: CollectionTableViewCell.id, for: indexPath) as! CollectionTableViewCell
            cell.selectionStyle = .none
            cell.configurate(models: modelHiglits)
            return cell
        } else {
            let cell = tableView.dequeueReusableCell(withIdentifier: PhotosPostTableViewCell.id, for: indexPath) as! PhotosPostTableViewCell
            cell.selectionStyle = .none
            cell.configurate(models: modelPosti)
            return cell
        }
    }
    
    
}

extension ProfileViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.row == 0 {
            return 260
        } else if indexPath.row == 1 {
            return 130
            
        } else {
            return 400
        }
    }
}
