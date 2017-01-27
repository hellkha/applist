//
//  HomeViewModel.swift
//  AppList
//
//  Created by Noturno on 26/01/17.
//  Copyright © 2017 Impacta. All rights reserved.
//

import UIKit

class HomeViewModel: NSObject {
    
    private var account: Account?
    private var articlesArray: [Articles]?
    private var currentArticle: Articles?
    
    init (account: Account) {
        self.account = account
        self.articlesArray = account.articles
    }
    
    var title: String {
        guard let loadTitle = self.currentArticle?.title else { return "" }
        
        return loadTitle
    }
    
    var urlToImage: String {
        guard let loadUrlToImage = self.currentArticle?.urlToImage else { return "" }
        
        return loadUrlToImage
    }
    
    var descriptionValue: String {
        guard let loadDescription = self.currentArticle?.descriptionValue else { return "" }
        
        return loadDescription
    }
    
    var author: String {
        guard let loadAuthor = self.currentArticle?.author else { return "" }
        
        return loadAuthor
    }
    
    var publishedAt: String {
        guard let loadPublishedAt = self.currentArticle?.publishedAt else { return "" }
        
        return loadPublishedAt
    }
    
    var url: String {
        guard let loadUrl = self.currentArticle?.url else { return "" }
        
        return loadUrl
    }
    

}
