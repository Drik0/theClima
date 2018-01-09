//
//  ChangeCityVC.swift
//  TheClima
//
//  Created by Gerson Costa on 28/12/2017.
//  Copyright © 2017 Gerson Costa. All rights reserved.
//

import UIKit

protocol ChangeCityDelegate {
    
    func userChangeCity(city: String)
    
}

class ChangeCityVC: UIViewController {

    @IBOutlet weak var changeCityTextField: UITextField!
    
    var delegate : ChangeCityDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func changeCityBtnPressed(_ sender: UIButton) {
        
        let cityName = changeCityTextField.text!
            
        delegate?.userChangeCity(city: cityName)
        
        dismiss(animated: true, completion: nil)
        
        
    }
    
    @IBAction func backBtnPressed(_ sender: UIButton) {
        
        self.dismiss(animated: true, completion: nil)
        
    }
    
}
