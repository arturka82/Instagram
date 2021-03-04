//
//  Model.swift
//  Instagram
//
//  Created by Artur Gedakyan on 02.03.2021.
//

import Foundation


struct InstaPost {
    let likeNumber: Int
    let userName: String
    let userImageName: String
    let postImageName: String
    let description: String
}

struct InstaStory {
    let userImageView: String
    let secondStoryImage: String
    let thirdStoryImage: String
    let fourStoryImage: String
}

struct InstaRecomend {
    let userImageView: String
    let userName: String
}

struct InstaLike {
    let userImageView: String
    let text: String
    let curentImageView: String

}

struct InstaFollow {
    let userImageView: String
    let text: String
}


struct Posti {
    let posti: String
}

struct BioInsta {
    let userImageView: String
    let text: String
}

struct Menu {
    var name: String
    var imageName: String
    
    init(text: String, imageName: String) {
        self.name = text
        self.imageName = imageName
    }
}
