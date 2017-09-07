//
//  DKWeatherResponse.swift
//
//  Create on 6/9/2017
//  Copyright © 2017 NHT. All rights reserved.
//

import Foundation
import ObjectMapper

class DKWeatherResponse: BaseModel {

    var currently: DKCurrently?
    var daily: DKDaily?
    var flags: DKFlag?
    var hourly: DKDaily?
    var latitude: Float?
    var longitude: Float?
    var minutely: DKDaily?
    var offset: Int?
    var timezone: String?

    override func mapping(map: Map) {
        super.mapping(map: map)
        currently <- map["currently"]
        daily <- map["daily"]
        flags <- map["flags"]
        hourly <- map["hourly"]
        latitude <- map["latitude"]
        longitude <- map["longitude"]
        minutely <- map["minutely"]
        offset <- map["offset"]
        timezone <- map["timezone"]        
    }

}
