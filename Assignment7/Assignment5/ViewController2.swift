//
//  ViewController2.swift
//  Assignment5
//
//  Created by Suhaas Choppavarapu on 8/26/20.
//  Copyright © 2020 Suhaas Choppavarapu. All rights reserved.
//

import UIKit

class ViewController2: UIViewController {
    
    @IBOutlet weak var tajmahalButton: UIButton!
    @IBOutlet weak var petraButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(red: 0.75, green: 0.85, blue: 0.86, alpha: 1.00)
        tajmahalButton.backgroundColor = UIColor.lightGray
        petraButton.backgroundColor = UIColor.lightGray
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "tajmahal" {
            let dvc = segue.destination as! ViewController3
            dvc.newImage = UIImage.init(named: "tajmahal")
            dvc.newLabelText = "Taj Mahal"
        }
        else if segue.identifier == "petra" {
            let dvc = segue.destination as! ViewController3
            dvc.newImage = UIImage.init(named: "petra")
            dvc.newLabelText = "Petra"
        }
    }
}
