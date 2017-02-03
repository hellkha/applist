//
//  ArticlesAPIStore.swift
//  AppList
//
//  Created by Noturno on 02/02/17.
//  Copyright © 2017 Impacta. All rights reserved.
//

import Foundation
import Alamofire



class ArticlesAPIStore: ArticlesStore {
    
    var error: NSError = NSError()
    
    func getAllArticles(userID: String, _ completion: @escaping (Account?, NSError?) -> Void) {
        
        do {
            let urlRequest = try ArticlesRouter.getAllArticles(idUser: userID).asURLRequest()
            
            Alamofire.request(urlRequest)
                
                .validate(statusCode: 200...200)
            
                .responseJSON(completionHandler: { (response) in
                    
                    guard let responseLoad = response.response else {return}
                    
                    switch (responseLoad.statusCode) {
                    case 200:
                        guard let json = response.result.value as? [String: Any] else {completion(nil, self.error); return}
                        
                        let accountLoad = Account(object: json)
                        
                        completion(accountLoad, nil)
                        
                        break
                        
                        
                    default:
                        completion(nil, response.error as? NSError)
                    }
                    
                })
            
        
        } catch {
            
        }
    }
}
