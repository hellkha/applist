//
//  LoginViewController.swift
//  AppList
//
//  Created by Noturno on 13/02/17.
//  Copyright © 2017 Impacta. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    
    
    // Outlets
    @IBOutlet weak var loginTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var enterButton: UIButton!
    
    
    // Variables
    let loginDataProvider = LoginDataProvider()
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        self.setupLetMeInButton()
        self.loginDataProvider.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func setupLetMeInButton() {
        enterButton.layer.cornerRadius = 10
        enterButton.layer.borderWidth = 1
        enterButton.layer.borderColor = UIColor.white.cgColor
    }
    
    
    @IBAction func letMeInTapped(_ sender: UIButton) {
        
        if isDataValid() {
            self.loginDataProvider.login(email: self.loginTextField.text!, password: self.passwordTextField.text!)
        }
        
    }
    
    
    func isDataValid() -> Bool {
        
        if ((self.loginTextField.text?.isEmpty)! || (self.passwordTextField.text?.isEmpty)!) {
            return false
        } else {
            return true
        }
        
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
