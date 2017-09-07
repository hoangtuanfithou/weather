//
//  DKData.swift
//
//  Create on 6/9/2017
//  Copyright © 2017 NHT. All rights reserved.
//

import Foundation
import ObjectMapper

class DKData: BaseModel {

    var apparentTemperatureHigh: Float?
    var apparentTemperatureHighTime: Int?
    var apparentTemperatureLow: Float?
    var apparentTemperatureLowTime: Int?
    var apparentTemperatureMax: Float?
    var apparentTemperatureMaxTime: Int?
    var apparentTemperatureMin: Int?
    var apparentTemperatureMinTime: Int?
    var cloudCover: Int?
    var dewPoint: Float?
    var humidity: Float?
    var icon: String?
    var moonPhase: Float?
    var ozone: Float?
    var precipIntensity: Int?
    var precipIntensityMax: Float?
    var precipIntensityMaxTime: Int?
    var precipProbability: Int?
    var precipType: String?
    var pressure: Float?
    var summary: String?
    var sunriseTime: Int?
    var sunsetTime: Int?
    var temperatureHigh: Float?
    var temperatureHighTime: Int?
    var temperatureLow: Float?
    var temperatureLowTime: Int?
    var temperatureMax: Float?
    var temperatureMaxTime: Int?
    var temperatureMin: Int?
    var temperatureMinTime: Int?
    var time: Int?
    var uvIndex: Int?
    var uvIndexTime: Int?
    var visibility: Float?
    var windBearing: Int?
    var windGust: Float?
    var windGustTime: Int?
    var windSpeed: Float?
    var apparentTemperature: Float?
    var temperature: Float?
    var precipIntensityError: Float?

    override func mapping(map: Map) {
        super.mapping(map: map)
        apparentTemperatureHigh <- map["apparentTemperatureHigh"]
        apparentTemperatureHighTime <- map["apparentTemperatureHighTime"]
        apparentTemperatureLow <- map["apparentTemperatureLow"]
        apparentTemperatureLowTime <- map["apparentTemperatureLowTime"]
        apparentTemperatureMax <- map["apparentTemperatureMax"]
        apparentTemperatureMaxTime <- map["apparentTemperatureMaxTime"]
        apparentTemperatureMin <- map["apparentTemperatureMin"]
        apparentTemperatureMinTime <- map["apparentTemperatureMinTime"]
        cloudCover <- map["cloudCover"]
        dewPoint <- map["dewPoint"]
        humidity <- map["humidity"]
        icon <- map["icon"]
        moonPhase <- map["moonPhase"]
        ozone <- map["ozone"]
        precipIntensity <- map["precipIntensity"]
        precipIntensityMax <- map["precipIntensityMax"]
        precipIntensityMaxTime <- map["precipIntensityMaxTime"]
        precipProbability <- map["precipProbability"]
        precipType <- map["precipType"]
        pressure <- map["pressure"]
        summary <- map["summary"]
        sunriseTime <- map["sunriseTime"]
        sunsetTime <- map["sunsetTime"]
        temperatureHigh <- map["temperatureHigh"]
        temperatureHighTime <- map["temperatureHighTime"]
        temperatureLow <- map["temperatureLow"]
        temperatureLowTime <- map["temperatureLowTime"]
        temperatureMax <- map["temperatureMax"]
        temperatureMaxTime <- map["temperatureMaxTime"]
        temperatureMin <- map["temperatureMin"]
        temperatureMinTime <- map["temperatureMinTime"]
        time <- map["time"]
        uvIndex <- map["uvIndex"]
        uvIndexTime <- map["uvIndexTime"]
        visibility <- map["visibility"]
        windBearing <- map["windBearing"]
        windGust <- map["windGust"]
        windGustTime <- map["windGustTime"]
        windSpeed <- map["windSpeed"]
        apparentTemperature <- map["apparentTemperature"]
        temperature <- map["temperature"]
        precipIntensityError <- map["precipIntensityError"]
    }

}
