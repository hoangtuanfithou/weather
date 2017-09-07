//
//  AppBaseModel.swift
//  Nailplus
//
//  Created by NHT on 9/6/17.
//  Copyright © 2017 NHT. All rights reserved.
//

import ObjectMapper

class BaseModel: Mappable {
    
    init() {
        // Request function
    }
    
    required init?(map: Map) {
        // Mappable request function
    }

    func mapping(map: Map) {
        // Mappable request function
    }
    
}
