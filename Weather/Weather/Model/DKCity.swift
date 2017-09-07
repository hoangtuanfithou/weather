//
//  DKCity.swift
//
//  Created by NHT on 9/6/17.
//  Copyright © 2017 NHT. All rights reserved.
//

import Foundation
import ObjectMapper
import Alamofire

class DKCity: BaseModel, DKCityProtocol {

    var lat: Double?
    var lon: Double?
    var name: String?
    
    var weatherInfoDidChange: ((DKCityProtocol) -> ())?
    var request: Request?
    var weather: DKWeatherResponse? {
        get {
            if weatherResponse == nil && request?.task?.state != .running {
                requestWeatherInfo()
            }
            return weatherResponse
        }
    }
    
    internal var weatherResponse: DKWeatherResponse? {
        didSet {
            weatherInfoDidChange?(self)
        }
    }
    
    override func mapping(map: Map) {
        super.mapping(map: map)
        lat <- map["lat"]
        lon <- map["lon"]
        name <- map["name"]        
    }

}
