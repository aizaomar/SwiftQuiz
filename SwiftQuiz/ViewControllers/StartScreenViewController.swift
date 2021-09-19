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




//For Dima. В func updateUI() прописать свойства и подставить интерполяцию \(userName) в resultTextLabel.text = ...
//
//
//  примерно так
//
//  private func updateUI() {
//
//  let defaults = UserDefaults.standard
//  let userName = defaults.string(forKey: "userName") ?? ""
//
//  resultTextLabel.text = "\(userName),Вы ответили
//  правильно на \(correctAnswerCount) из \(answers.count)"
//
//
