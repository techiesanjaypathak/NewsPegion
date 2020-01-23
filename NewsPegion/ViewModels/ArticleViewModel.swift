//
//  ArticleViewModel.swift
//  NewsPegion
//
//  Created by SanjayPathak on 23/01/20.
//  Copyright © 2020 Sanjay. All rights reserved.
//

import Foundation

struct ArticleListViewModel {
    let articles: [Article]
}

extension ArticleListViewModel {
    var numberOfSections: Int {
        return 1
    }
    var numberOfRowsInSection: Int {
        return self.articles.count
    }
    func articleAtIndex(index: Int) -> ArticleViewModel{
        return ArticleViewModel(articles[index])
    }
}

struct ArticleViewModel {
    private let article: Article
}

extension ArticleViewModel {
    init(_ article: Article) {
        self.article = article
    }
}

extension ArticleViewModel {
    var title: String {
        self.article.title
    }
    var description : String {
        self.article.description
    }
}
