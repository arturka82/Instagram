//
//  InteractionTableViewController.swift
//  Instagram
//
//  Created by Artur Gedakyan on 02.03.2021.
//

import UIKit

class InteractionTableViewController: UITableViewController {
    
    @IBOutlet weak var table: UITableView!
    
    
    var modelLike = [InstaLike]()
    var modelFollow = [InstaFollow]()
    var dateModel = [String]()
    
    private var refreshControll = UIRefreshControl()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        table.register(FollowTableViewCell.nib(), forCellReuseIdentifier: FollowTableViewCell.id)
        table.register(LikesTableViewCell.nib(), forCellReuseIdentifier: LikesTableViewCell.id)
        
        createUsers()
        createRefresh()
    }
    @objc private func refresh(_ sender: AnyObject) {
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            self.refreshControll.endRefreshing()
        }
    }
    
    private func createRefresh() {
        refreshControll.addTarget(self, action: #selector(refresh(_:)), for: .valueChanged)
        table.addSubview(refreshControll)
    }
    
    private func createUsers() {
        modelFollow.append(InstaFollow(userImageView: "head1", text: "ebaniy rot etogo kazino"))
        modelFollow.append(InstaFollow(userImageView: "head1", text: "ebaniy rot etogo kazino"))
        modelFollow.append(InstaFollow(userImageView: "head1", text: "ebaniy rot etogo kazino"))
        modelFollow.append(InstaFollow(userImageView: "head1", text: "ebaniy rot etogo kazino"))
        modelFollow.append(InstaFollow(userImageView: "head1", text: "ebaniy rot etogo kazino"))
        modelFollow.append(InstaFollow(userImageView: "head1", text: "ebaniy rot etogo kazino"))
        
        
        modelLike.append(InstaLike(userImageView: "head4", text: "devochka_s_kare оставила коментарий: Артур, капец ты умный", curentImageView: "head1"))
        modelLike.append(InstaLike(userImageView: "head1", text: "axper.ybbc лайкнул ваш пост", curentImageView: "head1"))
        modelLike.append(InstaLike(userImageView: "head3", text: "dps82: поймали лоха", curentImageView: "like1"))
        modelLike.append(InstaLike(userImageView: "head1", text: "ebaniy", curentImageView: "head1"))
        modelLike.append(InstaLike(userImageView: "head1", text: "ebaniy", curentImageView: "head1"))
        modelLike.append(InstaLike(userImageView: "head1", text: "ebaniy", curentImageView: "head1"))
        
        
        dateModel.append("Сегодня")
        dateModel.append("На этой неделе")
        dateModel.append("Этот месяц")
        
        
        
    }
    
    
}

//MARK: UITableViewDataSource
extension InteractionTableViewController {
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        dateModel.count
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        modelLike.count
        
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if indexPath.row <= 1 && indexPath.section == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: LikesTableViewCell.id, for: indexPath) as! LikesTableViewCell
            cell.congigure(model: modelLike[indexPath.row])
            cell.selectionStyle = .none
            return cell
        } else if indexPath.row <= 3 && indexPath.section == 1 {
            let cell = tableView.dequeueReusableCell(withIdentifier: LikesTableViewCell.id, for: indexPath) as! LikesTableViewCell
            cell.congigure(model: modelLike[indexPath.row])
            cell.selectionStyle = .none
            return cell
            
        } else if indexPath.section == 1 {
            let cell = tableView.dequeueReusableCell(withIdentifier: FollowTableViewCell.id, for: indexPath) as! FollowTableViewCell
            cell.congigure(model: modelFollow[indexPath.row])
            cell.selectionStyle = .none
            
            return cell
        } else {
            let cell = tableView.dequeueReusableCell(withIdentifier: LikesTableViewCell.id, for: indexPath) as! LikesTableViewCell
            cell.congigure(model: modelLike[indexPath.row])
            cell.selectionStyle = .none
            
            return cell
        }
    }
    
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let label = UILabel()
        switch section {
        case 0:
            label.text = "  Сегодня"
        case 1:
            label.text = "  На этой неделе"
        case 2:
            label.text = "  В этом месяце месяце"
        default:
            label.text = ""
        }
        label.textColor = .black
        label.font = UIFont(name: "Menlo", size: 17)
        label.backgroundColor = .white
        return label
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        60
    }
    
}


