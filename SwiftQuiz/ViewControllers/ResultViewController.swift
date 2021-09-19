//
//  ResultViewController.swift
//  SwiftQuiz
//
//  Created by Повелитель on 14.09.2021.
//

import UIKit

enum PictureType: String {
    case badscore
    case averagescore
    case pefectscore
}


class ResultViewController: UIViewController {
    
    // MARK: - IB Outlets
    @IBOutlet var resultPic: UIImageView!
    @IBOutlet var resultTextLabel: UILabel!
    
    // MARK: - Public Properties
    var answers: [Answer]!
    
    // MARK: - Private Properties
    private var correctAnswerCount = 0
    
    // MARK: - Override methods
    override func viewDidLoad() {
        super.viewDidLoad()
        updateResult()
        updateUI()
   
    }
    // MARK: - Private methods
    private func updateResult () {
        
        for answer in answers {
            if answer.isCorrect {
                correctAnswerCount += 1
            }
        }
    }
        private func updateUI() {
            switch correctAnswerCount {
            case 0...5:
                resultPic.image = UIImage(named: "SadJpeg")
            case 5...10:
                resultPic.image = UIImage(named: "NormalJpeg")
            default:
                resultPic.image = UIImage(named: "HappyJpeg")
            }
            
            let defaults = UserDefaults.standard
            let userName = defaults.string(forKey: "userName") ?? ""
            resultTextLabel.text = "\(userName), вы ответили правильно на \(correctAnswerCount) из \(answers.count)"
            
        }
    }
