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
    @IBOutlet weak var cell: UITableViewCell!
    
    
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
        
        self.tableView.delegate = self
        self.tableView.dataSource = self
        self.tableView.reloadData()
    }
    
    func fail(error: NSError) {
        LoadingView.isLoading(view: self.view, show: false)
    }
    
}


extension ArticlesViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.viewModel?.setupDetailsSelected(indice: indexPath.row)
        
        self.performSegue(withIdentifier: "SegueArticleDetails", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as! ArticleDetailViewController
        
        vc.viewModel = self.viewModel
    }
    
}


extension ArticlesViewController: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        guard let count = self.viewModel?.loadCountArticles else { return 0 }
        
        return count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
        self.viewModel?.loadCurrentArticle(indice: indexPath.row)
        cell.textLabel?.text = self.viewModel?.title
        
        return cell
    }
}
