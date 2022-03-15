//
//  ViewController.swift
//  ActivityIndicator
//
//  Created by Cihan Çallı on 15.03.2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    @IBOutlet weak var alertLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        alertLabel.isHidden = true
    }
    @IBAction func didLoginButtonTapped(_ sender: Any) {
        if usernameTextField.text == "cihan", passwordTextField.isHidden  {
            passwordTextField.isHidden = false
            alertLabel.isHidden = true
            
        } else {
            alertLabel.isHidden = false
            alertLabel.text = "Hata: Kullanıcı adını eksik veya yanlış girdiniz"
            if !(passwordTextField.isHidden), passwordTextField.text == "123456"{
                activityIndicator.startAnimating()
                alertLabel.isHidden = true
            } else {
                alertLabel.isHidden = false
                alertLabel.text = "Hata: Şifreyi eksik veya yanlış girdiniz"
            }
        }
        
    }
    
    
}

