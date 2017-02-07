//
//  ArticlesViewController.swift
//  
//
//  Created by Noturno on 31/01/17.
//
//

import UIKit

class ArticlesViewController: UIViewController {

    // Outlets
    @IBOutlet weak var tableView: UITableView!
    
    
    // Variables
    var dataProvider = ArticlesDataProvider()
    var viewModel: ArticlesViewModel?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        
        self.dataProvider.delegate = self
        
        
        self.tableView.layer.cornerRadius = 20
        
        
        self.dataProvider.getAllArticles()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}



extension ArticlesViewController: ArticlesDataProviderProtocol {
    
    func success<T>(vm: T) {
        LoadingView.isLoading(view: self.view, show: false)

        guard let currentVM = vm as? ArticlesViewModel else {return}
        self.viewModel = currentVM
    }
    
    func fail(error: NSError) {
        LoadingView.isLoading(view: self.view, show: false)
    }
    
}
