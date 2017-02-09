//
//  ArticleDetailViewController.swift
//  AppList
//
//  Created by Noturno on 07/02/17.
//  Copyright © 2017 Impacta. All rights reserved.
//

import UIKit

class ArticleDetailViewController: UIViewController {
    
    var viewModel: ArticlesViewModel? = nil
    
    
    @IBOutlet weak var articleDescription: UITextView!
    @IBOutlet weak var articleAvatar: UIImageView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.articleDescription.layer.cornerRadius = 20
        self.articleDescription.text = viewModel?.descriptionDetail
        self.articleAvatar.image = viewModel?.imageDetailSelected
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
