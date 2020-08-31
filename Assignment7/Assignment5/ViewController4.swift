//
//  ViewController4.swift
//  Assignment5
//
//  Created by Suhaas Choppavarapu on 8/29/20.
//  Copyright © 2020 Suhaas Choppavarapu. All rights reserved.
//

import UIKit

class ViewController4: UIViewController {
    
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    
    @IBOutlet weak var temperatureLabel: UILabel!
    
    @IBOutlet weak var temperatureTextField: UITextField!
    
    @IBOutlet weak var submitButton: UIButton!
    
    var enteredTemperature: String!
    var convertedValue: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.init(red: 0.98, green: 0.83, blue: 0.76, alpha: 1.00)
        temperatureLabel.text = " "
        submitButton.backgroundColor = UIColor.lightGray
        temperatureTextField.keyboardType = .decimalPad
    }
    
    func convertValue(isCelsius: Bool) -> String? {
        if let entertedTemp = enteredTemperature,
            let convertedDoubleValueOfTemp = Double(entertedTemp) {
            
            switch isCelsius {
            case true:
                let value = (convertedDoubleValueOfTemp - 32 ) / 1.8
                convertedValue = String(value.rounded())
            case false:
                let value = (convertedDoubleValueOfTemp * 1.8) + 32
                convertedValue = String(value.rounded())
            }
        }
        
        return convertedValue
    }
    
    @IBAction func submitButtonTapped(_ sender: Any) {
        temperatureTextField.resignFirstResponder()
        
        if let text = temperatureTextField.text {
            enteredTemperature = text
            temperatureLabel.text = enteredTemperature
        }
        
        let valueInCelsius = Double(temperatureTextField.text!) ?? 0.0
        
        if valueInCelsius < 1{
            view.backgroundColor = UIColor.init(red: 0.33, green: 0.00, blue: 0.92, alpha: 1.00)
        } else if valueInCelsius >= 1 && valueInCelsius < 10{
            view.backgroundColor = UIColor.init(red: 0.07, green: 0.45, blue: 0.80, alpha: 1.00)
        } else if valueInCelsius >= 10 && valueInCelsius < 25{
            view.backgroundColor = UIColor.init(red: 0.75, green: 0.85, blue: 0.86, alpha: 1.00)
        } else if valueInCelsius >= 25 && valueInCelsius < 40{
            view.backgroundColor = UIColor.init(red: 0.99, green: 0.80, blue: 0.00, alpha: 1.00)
        } else if valueInCelsius >= 40 && valueInCelsius < 50{
            view.backgroundColor = UIColor.systemOrange
        } else if valueInCelsius >= 50 {
            view.backgroundColor = UIColor.init(red: 0.72, green: 0.00, blue: 0.00, alpha: 1.00)
        }
    }
    
    @IBAction func segmentedControlTapped(_ sender: Any) {
        temperatureTextField.text = ""
        
        let selectedIndex = segmentedControl.selectedSegmentIndex
        assignConvertedValue(isCelsius: selectedIndex == 0 ? true : false)
    }
    
    func assignConvertedValue(isCelsius: Bool) {
        if let value = convertValue(isCelsius: isCelsius) {
            temperatureLabel.text = value
        }
    }
    
    
}
