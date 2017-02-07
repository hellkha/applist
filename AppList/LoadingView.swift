//
//  LoadingView.swift
//  AppList
//
//  Created by Noturno on 31/01/17.
//  Copyright © 2017 Impacta. All rights reserved.
//

import Foundation
import ALLoadingView


class LoadingView {
    
    static func showLoading() {
        ALLoadingView.manager.blurredBackground = true
        ALLoadingView.manager.showLoadingView(ofType: .basic)
    }
    
    static func hideLoading() {
        ALLoadingView.manager.hideLoadingView()
    }
    
    static func isLoading(view: UIView, show: Bool){
        
        if show{
//            ASProgressHud.showHUDAddedTo(view, animated: true, type: .default)
            // TODO: instalar o ASProgressHud
            print("Show RUD")
        }else{
//            ASProgressHud.hideHUDForView(view, animated: true)
            print("Hide RUD")
        }
    }
}
