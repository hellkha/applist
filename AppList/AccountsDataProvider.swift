//
//  AccountsDataProvider.swift
//  AppList
//
//  Created by Noturno on 31/01/17.
//  Copyright © 2017 Impacta. All rights reserved.
//

import Foundation


protocol AccountsDataProviderProtocol: BaseProtocol {
    
    
}



class AccountsDataProvider {
    
    var delegate: AccountsDataProviderProtocol?
    
    func requestAccounts() {
        // TODO: implement pedir dados da API
    }
}
