//
//  QuizManager.swift
//  Country Flag Game
//
//  Created by chase Hashiguchi on 1/11/24.
//

import Foundation
import SwiftUI

class QuizManager:ObservableObject {
    var questions = Data().questions
    @Published private(set) var index = 0
    @Published private(set) var PlayingGame = false
    @Published private(set) var answerSelected = false
    @Published private(set) var country = ""
    @Published private(set) var AnswerChoices = [Answer]()
    @Published private(set) var progress: CGFloat = 0.0
    @Published private(set) var score = 0
    init() {
        reset()
    }
    func reset() {
        questions = questions.shuffled()
        index = 0
        score = 0
        progress = 0.0
        PlayingGame = true
    }
    func goToNextQuestion() {
        if index < questions.count {
            answerSelected = false
            progress = CGFloat(index) / CGFloat(questions.count) * 350.0
            let nextQuestion = questions[index]
            country = nextQuestion.correctAnswer.text
            AnswerChoices = ([nextQuestion.correctAnswer] + nextQuestion.incorrectAnswers).shuffled()
            index += 1
        } else{
            PlayingGame = false
        }
    }
    func selectedAnswers(answer: Answer) {
        answerSelected = true
        if answer.isCorrect {
            score += 1
        }
    }
}
