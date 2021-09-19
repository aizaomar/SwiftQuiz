//
//  ResultViewController.swift
//  SwiftQuiz
//
//  Created by Повелитель on 14.09.2021.
//

import UIKit

enum PictureType: String {
    case badscore = "SadJpeg"
    case averagescore
    case perfectscore
}

enum ResultGag: String {
    case badscore = "чему я тебя учил?!"
    case averagescore = "неплохо, но ты можешь лучше!"
    case perfectscore = "молодец, так держать!"
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
        case 5...14:
            resultPic.image = UIImage(named: "NormalJpeg")
        default:
            resultPic.image = UIImage(named: "HappyJpeg")
        }
        
        let defaults = UserDefaults.standard
        let userName = defaults.string(forKey: "userName") ?? ""
        
        switch correctAnswerCount {
        case 0...5:
            resultTextLabel.text = "\(userName), \(ResultGag.badscore.rawValue) ты ответил правильно всего на \(correctAnswerCount) из \(answers.count) "
        case 5...14:
            resultTextLabel.text = "Твой результат, \(userName), \(correctAnswerCount) из \(answers.count), \(ResultGag.averagescore.rawValue)"
        default:
            resultTextLabel.text = "\(userName), \(ResultGag.perfectscore.rawValue) \(correctAnswerCount) из \(answers.count)"
        }
    }
}
