//
//  ArticleViewController+CircleMenuDelegate.swift
//  AppList
//
//  Created by Noturno on 13/02/17.
//  Copyright © 2017 Impacta. All rights reserved.
//

import Foundation
import CircleMenu



extension ArticlesViewController: CircleMenuDelegate {
    
    func circleMenu(_ circleMenu: CircleMenu, willDisplay button: UIButton, atIndex: Int) {
        
//        button.layer.cornerRadius = button.bounds.size.width/2
        button.setBackgroundImage(#imageLiteral(resourceName: "button-grey"), for: .normal)
        
        switch atIndex {
        case 0:
            button.backgroundColor = UIColor.green
            break
        case 1:
            button.backgroundColor = UIColor.blue
            break
        case 2:
            button.backgroundColor = UIColor.red
            break
        default:
            //
            break
        }
        
    }
    
    
    func circleMenu(_ circleMenu: CircleMenu, buttonWillSelected button: UIButton, atIndex: Int) {
        
        switch atIndex {
        case 0:
            button.setBackgroundImage(#imageLiteral(resourceName: "button-blue"), for: .normal)
            break
        case 1:
            button.setBackgroundImage(#imageLiteral(resourceName: "button-blue"), for: .normal)
            break
        case 2:
            button.setBackgroundImage(#imageLiteral(resourceName: "button-blue"), for: .normal)
            break
        default:
            //
            break
        }
            
    }
    
    
    func circleMenu(_ circleMenu: CircleMenu, buttonDidSelected button: UIButton, atIndex: Int) {
        
        switch atIndex {
        case 0:
            button.setBackgroundImage(#imageLiteral(resourceName: "button-blue"), for: .normal)
            break
        case 1:
            button.setBackgroundImage(#imageLiteral(resourceName: "button-blue"), for: .normal)
            break
        case 2:
            button.setBackgroundImage(#imageLiteral(resourceName: "button-blue"), for: .normal)
            break
        default:
            //
            break
        }
        
    }
    
}
