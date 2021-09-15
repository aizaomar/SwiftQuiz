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
    
    static func getQuestion() -> [Answer] {
        return []
    }
}

struct Answer {
    let title: String
    let isCorrect: Bool
}
