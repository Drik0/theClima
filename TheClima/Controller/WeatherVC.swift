//
//  ViewController.swift
//  TheClima
//
//  Created by Gerson Costa on 27/12/2017.
//  Copyright © 2017 Gerson Costa. All rights reserved.
//

import UIKit

class WeatherVC: UIViewController {

    @IBOutlet weak var temperatureLabel: UILabel!
    
    @IBOutlet weak var cityLabel: UILabel!
    
    @IBOutlet weak var iconImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func switchBtnPressed(_ sender: UIButton) {
    }
    
    
}

