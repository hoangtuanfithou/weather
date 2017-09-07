//
//  DKCityListViewModel.swift
//  Weather
//
//  Created by NHT on 9/6/17.
//  Copyright © 2017 NHT. All rights reserved.
//

import SVProgressHUD
import ObjectMapper

protocol DKCityListViewModelProtocol {
    
    var cityList: [DKCity]? { get }

    // function to call when cities list did change
    var cityListDidChange: ((DKCityListViewModelProtocol) -> ())? { get set }
 
    // function call when pull to refresh
    func reloadWeatherInfo()

}

class DKCityListViewModel: DKCityListViewModelProtocol {
    
    var cityListDidChange: ((DKCityListViewModelProtocol) -> ())?
   
    var cityList: [DKCity]? {
        didSet {
            cityListDidChange?(self)
        }
    }
    
    func reloadWeatherInfo() {
        cityList = nil
        getListCity()
    }

    func getListCity() {
        if let filepath = Bundle.main.path(forResource: "CityList", ofType: "json") {
            do {
                let jsonString = try String(contentsOfFile: filepath)
                cityList = Mapper<DKCity>().mapArray(JSONString: jsonString)
            } catch {
                // contents could not be loaded
            }
        }
    }
    
}
