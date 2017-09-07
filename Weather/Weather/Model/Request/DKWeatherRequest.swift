//
//  CTMovieListRequest.swift
//  Weather
//
//  Created by NHT on 9/6/17.
//  Copyright © 2017 NHT. All rights reserved.
//

import UIKit
import ObjectMapper

class DKWeatherRequest: BaseRequest {

    var key = ApiConfig.apiKey
    var latitude: Double?
    var longitude: Double?
    var exclude = ["alerts"]
    var extend = "hourly"
    var units = "si"
    var lang: String?
    
    override func mapping(map: Map) {
        super.mapping(map: map)
        exclude <- map["exclude"]
        extend <- map["extend"]
        lang <- map["lang"]
        units <- map["units"]
    }
    
    convenience init(latitude: Double?, longitude: Double?) {
        self.init()
        guard let lat = latitude, let lon = longitude else {
            return
        }
        self.latitude = lat
        self.longitude = lon
        url = ApiConfig.weatherRequestUrl + key + "/\(lat),\(lon)"
    }
    
}
