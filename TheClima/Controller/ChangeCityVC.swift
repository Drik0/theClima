//
//  ChangeCityVC.swift
//  TheClima
//
//  Created by Gerson Costa on 28/12/2017.
//  Copyright © 2017 Gerson Costa. All rights reserved.
//

import UIKit

class ChangeCityVC: UIViewController {

    @IBOutlet weak var changeCityTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func changeCityBtnPressed(_ sender: UIButton) {
    }
    
    @IBAction func backBtnPressed(_ sender: UIButton) {
        
        self.dismiss(animated: true, completion: nil)
        
    }
    
}
