//
//  LoginViewController+LoginDataProviderProtocol.swift
//  AppList
//
//  Created by Noturno on 14/02/17.
//  Copyright © 2017 Impacta. All rights reserved.
//

import Foundation
import UIKit


extension LoginViewController: LoginDataProviderProtocol {
    
    func success<T>(vm: T) {
        
        self.performSegue(withIdentifier: "Login", sender: nil)
    }
    
    func fail(error: NSError) {
        
        let alertController = UIAlertController(title: "ERRRRROOOOUUUUU!!!!!", message: "Errou os dados, bicho!\n O LOUCO, MEU!\nÉ brincadeira?!", preferredStyle: .alert)
        
        let defaultAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
        alertController.addAction(defaultAction)
        
        self.present(alertController, animated: true, completion: nil)
        
        
    }
}
