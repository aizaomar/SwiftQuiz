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
        let questions = DataManager.shared.questions.shuffled()
        
        var questionsWithShuflledAnswers: [Question] = []
        
        for question in questions {
            let shuffle = question.answers.shuffled()
            let title = question.title
            let questionWithShuflledAnswers = Question(title: title, answers: shuffle)
            questionsWithShuflledAnswers.append(questionWithShuflledAnswers)
        }
        return questionsWithShuflledAnswers
    }
}
