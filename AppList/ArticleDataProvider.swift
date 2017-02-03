//
//  ArticleDataProvider.swift
//  AppList
//
//  Created by Noturno on 31/01/17.
//  Copyright © 2017 Impacta. All rights reserved.
//

import Foundation


protocol ArticlesDataProviderProtocol: BaseProtocol {
    
    
    
}


class ArticlesDataProvider {
    
    func getAllArticles() {
        
        ArticlesAPIStore().getAllArticles(userID: "userId") { (account, error) in
        
            
            
        }
        // TODO: implement pedir dados da API
    }
}
