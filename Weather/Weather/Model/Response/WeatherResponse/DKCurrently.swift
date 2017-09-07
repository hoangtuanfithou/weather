//
//  DKCurrently.swift
//
//  Create on 6/9/2017
//  Copyright © 2017 NHT. All rights reserved.
//

import Foundation
import ObjectMapper

class DKCurrently: BaseModel {

    var apparentTemperature: Float?
    var cloudCover: Float?
    var dewPoint: Float?
    var humidity: Float?
    var icon: String?
    var nearestStormDistance: Int?
    var ozone: Float?
    var precipIntensity: Float?
    var precipIntensityError: Int?
    var precipProbability: Float?
    var precipType: String?
    var pressure: Float?
    var summary: String?
    var temperature: Float?
    var time: Int?
    var uvIndex: Int?
    var visibility: Float?
    var windBearing: Int?
    var windGust: Float?
    var windSpeed: Float?

    override func mapping(map: Map) {
        super.mapping(map: map)
        apparentTemperature <- map["apparentTemperature"]
        cloudCover <- map["cloudCover"]
        dewPoint <- map["dewPoint"]
        humidity <- map["humidity"]
        icon <- map["icon"]
        nearestStormDistance <- map["nearestStormDistance"]
        ozone <- map["ozone"]
        precipIntensity <- map["precipIntensity"]
        precipIntensityError <- map["precipIntensityError"]
        precipProbability <- map["precipProbability"]
        precipType <- map["precipType"]
        pressure <- map["pressure"]
        summary <- map["summary"]
        temperature <- map["temperature"]
        time <- map["time"]
        uvIndex <- map["uvIndex"]
        visibility <- map["visibility"]
        windBearing <- map["windBearing"]
        windGust <- map["windGust"]
        windSpeed <- map["windSpeed"]        
    }

}
