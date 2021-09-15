//
//  DataManager.swift
//  SwiftQuiz
//
//  Created by Vladimir Izmaylov on 15.09.2021.
//

import Foundation

class DataManager {
    static let shared = DataManager()
    
    let questions = [
        Question(title: "Вопрос 1", answers: [
            Answer(title: "Ответ 1", isCorrect: true),
            Answer(title: "Ответ 2", isCorrect: false),
            Answer(title: "Ответ 3", isCorrect: false),
            Answer(title: "Ответ 4", isCorrect: false)
        ]
        )
    ]
}
