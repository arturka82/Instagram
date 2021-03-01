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
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        table.register(PostTableViewCell.nib(), forCellReuseIdentifier: PostTableViewCell.id)
        
        
        createUsers()
    }
    
    private func createUsers() {
        models.append(InstaPost(likeNumber: 20999, userName: "axper.ybbc", userImageName: "head2", postImageName: "main1"))
        models.append(InstaPost(likeNumber: 20, userName: "axper.ybbc", userImageName: "head1", postImageName: "main1"))
        models.append(InstaPost(likeNumber: 20, userName: "axper.ybbc", userImageName: "head1", postImageName: "main1"))
        models.append(InstaPost(likeNumber: 20, userName: "axper.ybbc", userImageName: "head1", postImageName: "main1"))
    }


}




extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        models.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: PostTableViewCell.id, for: indexPath) as! PostTableViewCell
        cell.congigure(with: models[indexPath.row])
        
        return cell
        
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        1
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("qunem")
    }
    
    func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
//        100+140+view.frame.size.width
        500
    }
    
    
}


extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        120+140+view.frame.size.width
    }
}

struct InstaPost {
    let likeNumber: Int
    let userName: String
    let userImageName: String
    let postImageName: String
    
}






//        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
//
//        cell.textLabel?.text = "section \(indexPath.section) cell = \(indexPath.row)"
//        cell.imageView?.image = UIImage(systemName: "plus")
