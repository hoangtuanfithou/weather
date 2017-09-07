//
//  BaseRequest.swift
//  Weather
//
//  Created by NHT on 9/6/17.
//  Copyright © 2017 NHT. All rights reserved.
//

import ObjectMapper

class BaseRequest: BaseModel {
    
    final var apiKey = ApiConfig.apiKey
    var url = ""
    
    convenience init(_ url: String) {
        self.init()
        self.url = url
    }

    override func mapping(map: Map) {
        super.mapping(map: map)
        apiKey <- map["api_key"]
    }
    
}
