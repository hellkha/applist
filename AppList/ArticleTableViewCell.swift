//
//  ArticleTableViewCell.swift
//  AppList
//
//  Created by Noturno on 09/02/17.
//  Copyright © 2017 Impacta. All rights reserved.
//

import UIKit

class ArticleTableViewCell: UITableViewCell {
    
    // Outlets ----------------------------------
    @IBOutlet weak var avatar: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var authorLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    // ------------------------------------------
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    
    func setupCell(article: ArticlesViewModel) {
        self.avatar.image = article.imageDetail
        self.titleLabel.text = article.title
        self.authorLabel.text = article.author
        self.dateLabel.text = article.publishedAt
    }

}
