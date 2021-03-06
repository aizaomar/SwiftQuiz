//
//  QuestionViewController.swift
//  SwiftQuiz
//
//  Created by Александр on 12.09.21.
//

import UIKit

class QuestionViewController: UIViewController {
    
    @IBOutlet var progressView: UIProgressView!
    
    @IBOutlet var questionLabel: UILabel!
    
    @IBOutlet var answersButton: [UIButton]!
    
    private let questions = Question.getQuestions()
    private var questionIndex = 0
    private var answersChosen: [Answer] = []
    private var currentAnswers: [Answer] {
        questions[questionIndex].answers
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
        view.backgroundColor = .systemGray2
        questionLabel.backgroundColor = .white
        questionLabel.layer.cornerRadius = 25
        questionLabel.layer.masksToBounds = true
        
        setupButtons()
    }
    
    @IBAction func answerButtonsTapped(_ sender: UIButton) {
        guard let buttonIndex = answersButton.firstIndex(of: sender) else { return }
        let currentAnswer = currentAnswers[buttonIndex]
        answersChosen.append(currentAnswer)
        
        nextQuestion()
    }
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let resultVC = segue.destination as? ResultViewController else { return }
        resultVC.answers = answersChosen
    }
}

extension QuestionViewController {
    
    @IBAction func unwindToQuestionVC(segue: UIStoryboardSegue) {
        questionIndex = 0
        answersChosen = []
        
        updateUI()

    }
    
    private func updateUI() {

        title = "Вопрос \(questionIndex + 1)/\(questions.count)"
        
        let currentQuestion = questions[questionIndex]
        
        questionLabel.text = currentQuestion.title
        
        let totalProgress = Float(questionIndex) / Float(questions.count)
        
        progressView.setProgress(totalProgress, animated: true)
        
        showCurrentAnswer(for: currentQuestion.answers)
    }
    
    private func showCurrentAnswer(for answers: [Answer]) {
        for (button, answer) in zip(answersButton, answers) {
            button.setTitle(answer.title, for: .normal)
        }
    }
    
    private func nextQuestion() {
        questionIndex += 1
        
        if questionIndex < questions.count {
            updateUI()
            return
        }
        performSegue(withIdentifier: "showResult", sender: nil)
    }
    
    private func setupButtons() {
        for button in answersButton {
            button.backgroundColor = .systemYellow
            button.titleLabel?.lineBreakMode = .byWordWrapping
            button.layer.cornerRadius = 15
            button.tintColor = .black
        }
    }
}
