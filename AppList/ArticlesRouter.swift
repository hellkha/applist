//
//  ArticlesRouter.swift
//  AppList
//
//  Created by Noturno on 02/02/17.
//  Copyright © 2017 Impacta. All rights reserved.
//

import Foundation
import Alamofire


enum ArticlesRouter: URLRequestConvertible {
    
    case getAllArticles(idUser: String)
    
    
    var method: Alamofire.HTTPMethod {
        switch self {
        case .getAllArticles:
            return .get
        }
    }
    
    
    var path: String {
        switch self {
        case .getAllArticles:
            return API.getArticles
        }
    }
    
    
    func asURLRequest() throws -> URLRequest {
        
        var url = URL(string: API.baseURL)!
        var urlRequest = URLRequest(url: url.appendingPathComponent(path))
        
        switch self {
            
        case .getAllArticles(let idUser):
            
            var parameters = String(describing: urlRequest)
            parameters = parameters.replacingOccurrences(of: "$$", with: idUser)
            parameters = parameters.replacingOccurrences(of: "%3F", with: "?")
            
            url = URL(string: parameters)!
            urlRequest = URLRequest(url: url)
            urlRequest.httpMethod = method.rawValue
            return try Alamofire.JSONEncoding.default.encode(urlRequest)
            
        }
    }
    
    
}
