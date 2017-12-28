//
//  ViewController.swift
//  TheClima
//
//  Created by Gerson Costa on 27/12/2017.
//  Copyright © 2017 Gerson Costa. All rights reserved.
//

import UIKit
import CoreLocation

class WeatherVC: UIViewController, CLLocationManagerDelegate {

    @IBOutlet weak var temperatureLabel: UILabel!
    @IBOutlet weak var cityLabel: UILabel!
    @IBOutlet weak var iconImage: UIImageView!
    
    let locationManager = CLLocationManager()
    
    let WEATHER_URL = "http://api.openweathermap.org/data/2.5/weather"
    
    let APP_ID = "b6c9eafb3b750973bc5fdf8f3bb5f5dc"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        locationManager.delegate = self
        locationManager.desiredAccuracy = kCLLocationAccuracyHundredMeters
        locationManager.requestWhenInUseAuthorization()
        
    }

    @IBAction func switchBtnPressed(_ sender: UIButton) {
        
        
        
    }
    
    
}

