//
//  Article.swift
//  NewsPegion
//
//  Created by SanjayPathak on 23/01/20.
//  Copyright © 2020 Sanjay. All rights reserved.
//

import Foundation

struct ArticleList: Codable {
    let articles:[Article]
}

struct Article: Codable {
    let title: String
    let description: String
}
