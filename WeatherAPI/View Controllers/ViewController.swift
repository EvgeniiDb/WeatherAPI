//
//  ViewController.swift
//  WeatherAPI
//
//  Created by Евгений Доброволец on 23.04.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var weatherIconImageView: UIImageView!
    @IBOutlet weak var cityLabel: UILabel!
    @IBOutlet weak var temperatureLabel: UILabel!
    @IBOutlet weak var feelsLikeTemperatureLabel: UILabel!
    
    var networkWeatherManager = NetworkWeatherManager()
    
    @IBAction func searchPressed(_ sender: UIButton) {
        
        self.presentSearchAlertController(withTitle: "Enter city name", message: nil, style: .alert)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        networkWeatherManager.fetchCurrentWeather(forCity: "London")
        
        
    }


}

