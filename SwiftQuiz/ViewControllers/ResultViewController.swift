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
    
    // MARK: - Override methods
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.hidesBackButton = true
        updateResult()
    }
    
    // MARK: - Private methods
    private func updateResult () {
        var amountOfTypeAnswers: [Answer: Int] = [:]
        let answers = answers.map { $0.isCorrect }
        
        for answer in answers {
            if let answersTypeCount = amountOfTypeAnswers[answer] {
                amountOfTypeAnswers.updateValue(answersTypeCount + 1, forKey: answer)
            } else {
                amountOfTypeAnswers[answer] = 1
            }
            
            updateUI(with: Answer?)
        }
    }
    
    private func updateUI(with answer: Answer?) {
        resultPic.image = // фото из модели
            resultTextLabel.text = // "Вы ответили правильно на \(кол-во вопросов) из \(кол-ва вопросов)"
    }
    
}
