//
//  ArticlesStore.swift
//  AppList
//
//  Created by Noturno on 02/02/17.
//  Copyright © 2017 Impacta. All rights reserved.
//

import Foundation


protocol ArticlesStore {
    
    var error: NSError { get set }
    typealias completion<T> = (_ result: T, _ failure: NSError?) -> Void
    
    func getAllArticles(userID: String, _ completion: @escaping completion<Account?>)
}


enum ArticlesStoreError: Equatable, Error {
    
    case canNotGet(String)
}


func ==(lhs: ArticlesStoreError, rhs: ArticlesStoreError) -> Bool {
    
    switch (lhs, rhs) {
    case (.canNotGet(let a), .canNotGet(let b)) where a == b: return true
    default: return false
    }
}
