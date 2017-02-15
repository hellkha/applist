
//
//  LoginDataProvider.swift
//  AppList
//
//  Created by Noturno on 14/02/17.
//  Copyright © 2017 Impacta. All rights reserved.
//

import Foundation
import FirebaseAuth


protocol LoginDataProviderProtocol: BaseProtocol {
    
    
}



class LoginDataProvider {
    
    var delegate: LoginDataProviderProtocol?
    
    
    
    func login(email: String, password: String) {
        
        // myself@kill.me   strongpass
        FIRAuth.auth()?.signIn(withEmail: email, password: password) { (user, error) in
            
            if nil != user {
                self.delegate?.success(vm: true)
            } else {
                self.delegate?.fail(error: error as! NSError)
            }
            
        }
        
    }
    
}
