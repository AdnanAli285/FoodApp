//
//  Banner.swift
//  FoodApp
//
//  Created by Admin on 19/12/2020.
//  Copyright © 2020 Adnan Ali. All rights reserved.
//

import Foundation
import ObjectMapper

class Banner: Mappable{
    
    var description: String?
    var id: Int?
    var image: String?
    
    init(id: Int, description: String, image: String) {
        self.id = id
        self.description = description
        self.image = image
    }
    
    required init?(map: Map) {
        
    }
    
    func mapping(map: Map) {
        id <- map["id"]
        description <- map["desc"]
        image <- map["image"]
    }
    
}
