//
//  Question.swift
//  SwiftQuiz
//
//  Created by Mary Jane on 15.09.2021.
//

import Foundation

struct Question {
    let title: String
    let answers: [Answer]
    
    static func getQuestions() -> [Question] {
        DataManager.shared.questions.shuffled()
    }
}
