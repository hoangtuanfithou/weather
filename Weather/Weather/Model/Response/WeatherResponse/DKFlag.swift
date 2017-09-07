//
//  DKFlag.swift
//
//  Create on 6/9/2017
//  Copyright © 2017 NHT. All rights reserved.
//

import Foundation
import ObjectMapper

class DKFlag: BaseModel {

    var isdstations: [String]?
    var sources: [String]?
    var units: String?

    override func mapping(map: Map) {
        super.mapping(map: map)
        isdstations <- map["isd-stations"]
        sources <- map["sources"]
        units <- map["units"]        
    }

}
