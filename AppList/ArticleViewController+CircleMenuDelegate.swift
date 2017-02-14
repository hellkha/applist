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
            button.setBackgroundImage(#imageLiteral(resourceName: "button-galery"), for: .normal)
            button.backgroundColor = UIColor.black
            break
        case 1:
            button.setBackgroundImage(#imageLiteral(resourceName: "button-camera"), for: .normal)
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
//            button.setBackgroundImage(#imageLiteral(resourceName: "button-blue"), for: .normal)
            self.tappedShowGalery()
            break
        case 1:
//            button.setBackgroundImage(#imageLiteral(resourceName: "button-blue"), for: .normal)
            self.tappedShowCamera()
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
    
    
    
    func tappedShowGalery() {
        
        if UIImagePickerController.isSourceTypeAvailable(UIImagePickerControllerSourceType.photoLibrary) {
            
            let imagePicker = UIImagePickerController()
            imagePicker.delegate = self
            imagePicker.sourceType = UIImagePickerControllerSourceType.photoLibrary
            imagePicker.allowsEditing = false
            self.present(imagePicker, animated: true, completion: nil)
            
        }
    }
    
    
    func tappedShowCamera() {
        
    }
    
}



extension ArticlesViewController: UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
}
