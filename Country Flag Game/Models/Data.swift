//
//  Data.swift
//  Country Flag Game
//
//  Created by chase Hashiguchi on 1/11/24.
//

import Foundation

struct Data {
    let questions = [
        Question(correctAnswer:
                    Answer(text: "England", isCorrect: true),
                 incorrectAnswers: [
                    Answer(text: "Ireland", isCorrect: false),
                    Answer(text: "Iceland", isCorrect: false),
                    Answer(text: "South Africa", isCorrect: false)
                 ])
        ,
        Question(correctAnswer:
                    Answer(text: "France", isCorrect: true),
                 incorrectAnswers: [
                    Answer(text: "Spain", isCorrect: false),
                    Answer(text: "Italy", isCorrect: false),
                    Answer(text: "Germany", isCorrect: false)
                 ])
        ,
        Question(correctAnswer:
                    Answer(text: "Germany", isCorrect: true),
                 incorrectAnswers: [
                    Answer(text: "Austria", isCorrect: true),
                    Answer(text: "Italy", isCorrect: false),
                    Answer(text: "Czech Republic", isCorrect: false)
                 ])
    ]
}


