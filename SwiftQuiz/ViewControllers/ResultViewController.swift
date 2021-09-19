//
//  ResultViewController.swift
//  SwiftQuiz
//
//  Created by Повелитель on 14.09.2021.
//

import UIKit

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
    // MARK: - IB actions
    @IBAction func tryAgainButton(_ sender: Any) {
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
//            resultPic.image = // фото из модели
            resultTextLabel.text = "Вы ответили правильно на \(correctAnswerCount) из \(answers.count)"
        }
    }


