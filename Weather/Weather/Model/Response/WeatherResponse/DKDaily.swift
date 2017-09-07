//
//  DKDaily.swift
//
//  Create on 6/9/2017
//  Copyright © 2017 NHT. All rights reserved.
//

import Foundation
import ObjectMapper

class DKDaily: BaseModel {

    var data: [DKData]?
    var icon: String?
    var summary: String?

    override func mapping(map: Map) {
        super.mapping(map: map)
        data <- map["data"]
        icon <- map["icon"]
        summary <- map["summary"]        
    }

}
