//
//  StartScreenViewController.swift
//  SwiftQuiz
//
//  Created by Aiza on 16.09.2021.
//

import UIKit

class StartScreenViewController: UIViewController {
    
    @IBOutlet var userNameTextField: UITextField!
    
    @IBAction func startTestButtonPressed() {
        let defaults = UserDefaults.standard
        defaults.set(userNameTextField.text ?? "", forKey: "userName")
    }
}





