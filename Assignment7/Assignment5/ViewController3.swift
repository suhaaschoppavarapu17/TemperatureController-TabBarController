//
//  ViewController3.swift
//  Assignment5
//
//  Created by Suhaas Choppavarapu on 8/27/20.
//  Copyright © 2020 Suhaas Choppavarapu. All rights reserved.
//

import UIKit

class ViewController3: UIViewController {
    
    @IBOutlet weak var expandedImage: UIImageView!
    @IBOutlet weak var imageLabel: UILabel!
    
    
    var newImage: UIImage!
    
    var newLabel: UILabel!
    
    var newLabelText: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        expandedImage.image = newImage
        
        imageLabel.text = newLabelText
        
        view.backgroundColor = UIColor(red: 0.98, green: 0.82, blue: 0.76, alpha: 1.00)
    }
}
