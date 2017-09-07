//
//  CTCommon.swift
//  Weather
//
//  Created by NHT on 9/6/17.
//  Copyright © 2017 NHT. All rights reserved.
//

import Foundation

struct ApiConfig {
    
    static let apiKey = "e7aac8ba982dad7ac62f9016547499dc"
    static let weatherRequestUrl = "https://api.darksky.net/forecast/"
    
}

func LocalizedString(_ key: String) -> String {
    return NSLocalizedString(key, comment: "")
}
