//
//  DKCity+Weather.swift
//  Weather
//
//  Created by NHT on 9/6/17.
//  Copyright © 2017 NHT. All rights reserved.
//

protocol DKCityProtocol {
    
    var weatherInfoDidChange: ((DKCityProtocol) -> ())? { get set }
    
}

extension DKCity {
    
    func requestWeatherInfo() {
        let movieListRequest = DKWeatherRequest(latitude: lat, longitude: lon)
        request = ApiBusiness.get(request: movieListRequest, responseClass: DKWeatherResponse.self) { [weak self] (success, response) in
            if success, let weather = response {
                self?.weatherResponse = weather
            }
        }
    }
    
}
