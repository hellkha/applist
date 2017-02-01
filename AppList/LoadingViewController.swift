//
//  LoadingViewController.swift
//  
//
//  Created by Noturno on 31/01/17.
//
//

import UIKit

class LoadingViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        loadingTest()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    func loadingTest() {
        LoadingView.showLoading()
        LoadingView.hideLoading()
    }
    

}
