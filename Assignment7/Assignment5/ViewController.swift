//
//  ViewController.swift
//  Assignment5
//
//  Created by Suhaas Choppavarapu on 8/26/20.
//  Copyright © 2020 Suhaas Choppavarapu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var loginButton: UIButton!
    
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loginButton.backgroundColor = UIColor.lightGray
        view.backgroundColor = UIColor(red: 0.76, green: 0.88, blue: 0.77, alpha: 1.00)
    }
    
    @IBAction func loginButtonTapped(_ sender: UIButton) {
        
        let username = usernameTextField.text
        let password = passwordTextField.text
        
        if username ==  "" && password == ""  {
            let alertController = UIAlertController(title: "Error",
                                                    message: "Please enter Your Credentials",
                                                    preferredStyle: UIAlertController.Style.alert)
            
            let alertAction = UIAlertAction(title: "OK",
                                            style: UIAlertAction.Style.cancel, handler: nil)
            
            alertController.addAction(alertAction)
            
            present(alertController, animated: true, completion: nil)
            return
        }
        
        if username != "suhaas" {
            let alertController = UIAlertController(title: "Login Failed",
                                                    message: "Please enter valid Username",
                                                    preferredStyle: UIAlertController.Style.alert)
            
            let alertAction = UIAlertAction(title: "OK",
                                            style: UIAlertAction.Style.cancel, handler: nil)
            
            alertController.addAction(alertAction)
            
            present(alertController, animated: true, completion: nil)
            
        } else if password != "suhaas"{
            let alertController = UIAlertController(title: "Login Failed",
                                                    message: "Please enter valid Password",
                                                    preferredStyle: UIAlertController.Style.alert)
            let cancelAction = UIAlertAction(title: "OK",
                                             style: UIAlertAction.Style.cancel, handler: nil)
            
            alertController.addAction(cancelAction)
            
            present(alertController, animated: true, completion: nil)
            
        }
        
        usernameTextField.resignFirstResponder()
        passwordTextField.resignFirstResponder()
    }
}




