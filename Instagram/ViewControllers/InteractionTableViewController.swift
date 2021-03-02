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

        
        modelLike.append(InstaLike(userImageView: "head1", text: "ebaniy", curentImageView: "head1"))
        modelLike.append(InstaLike(userImageView: "head1", text: "axper.ybbc лайкнул ваш пост", curentImageView: "head1"))
        modelLike.append(InstaLike(userImageView: "head1", text: "ebaniy", curentImageView: "head1"))
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
        2
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        modelLike.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if indexPath.row == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "DataCell", for: indexPath)
            cell.textLabel?.text = dateModel[indexPath.row]
            cell.selectionStyle = .none
            
            return cell
        } else if indexPath.row == 3 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "DataCell", for: indexPath)
            cell.textLabel?.text = dateModel[1]
            cell.selectionStyle = .none
            
            return cell
        } else if indexPath.row == 1 {
            let cell = tableView.dequeueReusableCell(withIdentifier: FollowTableViewCell.id, for: indexPath) as! FollowTableViewCell
            cell.congigure(model: modelFollow[indexPath.row])
            cell.selectionStyle = .none
            
            return cell
        } else {
            let cell = tableView.dequeueReusableCell(withIdentifier: LikesTableViewCell.id, for: indexPath) as! LikesTableViewCell
            cell.congigure(model: modelLike[indexPath.row - 1])
            cell.selectionStyle = .none
            
            return cell
        }
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        60
    }
}


