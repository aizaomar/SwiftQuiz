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
       
        if userNameTextField.text == "" {
            alertController()
        }
        
        let defaults = UserDefaults.standard
        defaults.set(userNameTextField.text ?? "", forKey: "userName")
        
    }
    
    
    private func alertController() {
        let alertController = UIAlertController(title: "А как же имя?", message: "Представтесь", preferredStyle: .alert)
        let OkAction = UIAlertAction(title: "Ok", style: .cancel)
        alertController.addAction(OkAction)
        present(alertController, animated: true)
        
    }
}

extension StartScreenViewController: UITextFieldDelegate {
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
//    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
//            startTestButtonPressed()
//            performSegue(withIdentifier: "navVC", sender: nil)
//        }
//        return true
    }


