//
//  ViewController.swift
//  Weather
//
//  Created by NHT on 9/6/17.
//  Copyright © 2017 NHT. All rights reserved.
//

import UIKit
import MJRefresh

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    var viewModel = DKCityListViewModel()

    override func viewDidLoad() {
        super.viewDidLoad()
        viewModelConfig()
    }
    
    private func viewModelConfig() {
        // pull to refresh
        tableView.mj_header = MJRefreshNormalHeader(refreshingBlock: {
            self.viewModel.reloadWeatherInfo()
        })

        viewModel.cityListDidChange = { [weak self] viewModel in
            self?.tableView.reloadData()
            self?.tableView.mj_header.endRefreshing()
        }
        viewModel.getListCity()
    }
    
}

extension ViewController: UITableViewDataSource {
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.cityList?.count ?? 0
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let city = viewModel.cityList?[indexPath.row]
        let weather = city?.weather
        let cell = tableView.dequeueReusableCell(withIdentifier: "CityCell", for: indexPath)
        
        city?.weatherInfoDidChange = { cityProtocol in
            tableView.reloadRows(at: [indexPath], with: .automatic)
        }
        cell.textLabel?.text = city?.name
        cell.detailTextLabel?.text = weather != nil ? "\(weather?.currently?.temperature ?? 0)°C, \(Int((weather?.currently?.humidity ?? 0) * 100))% humidity, \(weather?.currently?.summary ?? "")" : "..."
        
        return cell
    }
        
}
