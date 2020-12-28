//
//  Endpoint.swift
//  FoodApp
//
//  Created by Admin on 20/12/2020.
//  Copyright © 2020 Adnan Ali. All rights reserved.
//

import Foundation
import Moya
import Alamofire

enum FoodApi : String{
    case banners = "banners"
    case products = "products"
}

extension FoodApi: TargetType{
    var baseURL: URL {
        return URL(string: "https://dummy/api/")!
    }
    
    var task: Task {
        return .requestPlain
    }
    
    var path: String{
        switch self {
        case .banners:
            return "banners"
        case .products:
            return "products"
        }
    }
    
    var method: Alamofire.HTTPMethod{
        return .get
    }
    
    var headers: [String : String]?{
        return nil
    }
    
    var sampleData : Data{
        return Data()
    }
}

