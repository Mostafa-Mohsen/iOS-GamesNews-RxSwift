//
//  NewsModel.swift
//  RxNews
//
//  Created by User on 18/12/2022.
//

import Foundation
import UIKit

struct NewsList {
    var news: [NewsModel]
    
    init(attributes: Any) {
        guard let unwrappedAttributes = attributes as? [[String: AnyObject]] else {
            news = []
            return
        }
        news = NewsList.getNewsFrom(attributes: unwrappedAttributes)
    }
    
    static func getNewsFrom(attributes: [[String: AnyObject]]) -> [NewsModel] {
        var models = [NewsModel]()
        attributes.forEach({
            let model = NewsModel(attributes: $0)
            models.append(model)
        })
        return models
    }
}

struct NewsModel {
    let title: String
    let shortDescription: String
    
    init(attributes: [String: AnyObject]) {
        title = attributes["title"] as? String ?? ""
        shortDescription = attributes["short_description"] as? String ?? ""
    }
}
