//
//  WebService.swift
//  NewsPegion
//
//  Created by SanjayPathak on 23/01/20.
//  Copyright © 2020 Sanjay. All rights reserved.
//

import Foundation

class WebService {
    func getArticles(url:URL, completion: @escaping ([Article]?) -> ()){
        URLSession.shared.dataTask(with: url) { data,response,error in
            if let error = error {
                print(error)
                completion(nil)
            } else if let data = data {
                let articleList = try? JSONDecoder().decode(ArticleList.self, from: data)
                print(articleList?.articles ?? "")
                completion(articleList?.articles)
            }
        }.resume()
    }
}
