//
//  AccountsViewModel.swift
//  AppList
//
//  Created by Noturno on 31/01/17.
//  Copyright © 2017 Impacta. All rights reserved.
//

import UIKit

class AccountsViewModel: NSObject {
    
    private var account: Account?
    
    init(account: Account) {
        self.account = account
    }
    
    
    var status: String {
        guard let loadProperty = self.account?.status else { return "" }
        
        return loadProperty
    }
    
    
    var articles: [Articles] {
        guard let loadProperty = self.account?.articles else { return [] }
        
        return loadProperty
    }
    
    
    var source: String {
        guard let loadProperty = self.account?.source else { return "" }
        
        return loadProperty
    }
    
    
    var sortBy: String {
        guard let loadProperty = self.account?.sortBy else { return "" }
        
        return loadProperty
    }

}
