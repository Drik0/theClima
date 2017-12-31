//
//  ViewController.swift
//  TheClima
//
//  Created by Gerson Costa on 27/12/2017.
//  Copyright © 2017 Gerson Costa. All rights reserved.
//

import UIKit
import CoreLocation
import Alamofire
import SwiftyJSON

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
        locationManager.startUpdatingLocation()
        
    }
    
    func getWeatherData(url : String, parameters : [String : String]) {
        
        Alamofire.request(url, method: .get, parameters: parameters).responseJSON {
            response in
            if response.result.ifSuccess {
                print("Success")
                
            } else {
                print("Error \(response.result.error)")
                self.cityLabel.text = "Connection Issues!"
            }
        }
        
    }
    
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        
        let location = locations[locations.count - 1]
        if location.horizontalAccuracy > 0 {
            locationManager.stopUpdatingLocation()
            
            let longitude = String(location.coordinate.longitude)
            let latitude = String(location.coordinate.latitude)
            
            let params : [String : String] = ["lat" : latitude, "lon" : longitude, "appid" : APP_ID]
            
            getWeatherData(url: WEATHER_URL, parameters: params)
            
        }
        
    }
    
    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        
        print(error)
        cityLabel.text = "Unable to get location!"
        
    }

    @IBAction func switchBtnPressed(_ sender: UIButton) {
        
        
        
    }
    
    
}

