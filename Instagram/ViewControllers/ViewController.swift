//
//  ViewController.swift
//  Instagram
//
//  Created by Artur Gedakyan on 01.03.2021.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var table: UITableView!
    
    var posts = [String]()
    var models = [InstaPost]()
    var modelStory = [InstaStory]()
    var modelRecomend = [InstaRecomend]()
    
    private var refreshControl = UIRefreshControl()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        table.register(PostTableViewCell.nib(), forCellReuseIdentifier: PostTableViewCell.id)
        table.register(StoriTableViewCell.nib(), forCellReuseIdentifier: StoriTableViewCell.id)
        table.register(RecomendTableViewCell.nib(), forCellReuseIdentifier: RecomendTableViewCell.id)
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "message"), style: .plain, target: self, action: nil)
        createUsers()
        createRefresh()
        addNavBarImage()
    }
    
    @objc private func refresh(_ sender: AnyObject) {
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            self.refreshControl.endRefreshing()
        }
    }
    
    private func createRefresh() {
        refreshControl.addTarget(self, action: #selector(refresh(_:)), for: .valueChanged)
        table.addSubview(refreshControl)
    }
    
    private func createUsers() {
        models.append(InstaPost(likeNumber: 20999, userName: "axper.ybbc", userImageName: "head2", postImageName: "main1", description: ""))
        models.append(InstaPost(likeNumber: 3924, userName: "axper.ybbc", userImageName: "head2", postImageName: "main1", description: "axper.ybbc: Тут должна быть ахуенная цитата"))
        models.append(InstaPost(likeNumber: 5100, userName: "axper.ybbc", userImageName: "head2", postImageName: "main1", description: ""))
        models.append(InstaPost(likeNumber: 5100, userName: "daldal.nasral", userImageName: "head2", postImageName: "main2", description: "daldal.nasral: ебучая машина"))
        
        modelStory.append(InstaStory(userImageView: "head2", secondStoryImage: "head2", thirdStoryImage: "head2", fourStoryImage: "head2"))
        
        modelRecomend.append(InstaRecomend(userImageView: "head2", userName: "Ebaniy Shashlik"))
        modelRecomend.append(InstaRecomend(userImageView: "head2", userName: "Ebaniy Shashlik"))
        modelRecomend.append(InstaRecomend(userImageView: "head2", userName: "Ebaniy Shashlik"))
        
    }
    
    func addNavBarImage() {
            let navController = navigationController!
            let image = UIImage(named: "insta")?.withAlignmentRectInsets(UIEdgeInsets(top: -4, left: 10, bottom: -4, right: 0))
            let imageView = UIImageView(image: image)
            let bannerWidth = navController.navigationBar.frame.size.width
            let bannerHeight = navController.navigationBar.frame.size.height
            let bannerX = bannerWidth / 2 - (image?.size.width)! / 2
            let bannerY = bannerHeight / 2 - (image?.size.height)! / 2
            imageView.frame = CGRect(x: bannerX, y: bannerY, width: bannerWidth, height: bannerHeight)
            imageView.contentMode = .scaleAspectFit
            navigationItem.titleView = imageView
        }
    
    func addNavBarButton() {
            let navController = navigationController!
            let image = UIImage(named: "insta")?.withAlignmentRectInsets(UIEdgeInsets(top: -4, left: 10, bottom: -4, right: 0))
            let imageView = UIImageView(image: image)
            let bannerWidth = navController.navigationBar.frame.size.width
            let bannerHeight = navController.navigationBar.frame.size.height
            let bannerX = bannerWidth / 2 - (image?.size.width)! / 2
            let bannerY = bannerHeight / 2 - (image?.size.height)! / 2
            imageView.frame = CGRect(x: bannerX, y: bannerY, width: bannerWidth, height: bannerHeight)
            imageView.contentMode = .scaleAspectFit
            navigationItem.titleView = imageView
        }
    }

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        models.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        if indexPath.row == 0 {
            let cell1 = tableView.dequeueReusableCell(withIdentifier: StoriTableViewCell.id, for: indexPath) as! StoriTableViewCell
            cell1.congigure(model: modelStory[indexPath.row])
            cell1.createScroll()
            cell1.selectionStyle = .none
            cell1.createImage()
            
            return cell1
        }  else if indexPath.row == 2 {
            let cell2 = tableView.dequeueReusableCell(withIdentifier: RecomendTableViewCell.id, for: indexPath) as! RecomendTableViewCell
            cell2.congigure(model: modelRecomend[indexPath.row])
            cell2.createScroll()
            cell2.selectionStyle = .none
            
            return cell2
        } else {
            let cell = tableView.dequeueReusableCell(withIdentifier: PostTableViewCell.id, for: indexPath) as! PostTableViewCell
            cell.congigure(with: models[indexPath.row])
            cell.selectionStyle = .none
            
            return cell
        }
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        1
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("qunem")
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.row == 0 {
            return 120
        } else if indexPath.row == 2 {
            return 337
        } else {
            return 120+140+view.frame.size.width
        }
    }
}

extension ViewController: UITableViewDelegate {
    
}

struct InstaPost {
    let likeNumber: Int
    let userName: String
    let userImageName: String
    let postImageName: String
    let description: String
}

struct InstaStory {
    var userImageView: String
    var secondStoryImage: String
    var thirdStoryImage: String
    var fourStoryImage: String
}

struct InstaRecomend {
    var userImageView: String
    var userName: String
}
