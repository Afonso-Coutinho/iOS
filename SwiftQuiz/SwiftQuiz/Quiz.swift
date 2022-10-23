//
//  Quiz.swift
//  SwiftQuiz
//
//  Created by Afonso Coutinho on 28/08/22.
//

import Foundation

class Quiz {
    
    let question: String
    let options: [String]
    private let correctAnswers: String
    
    init(question: String, options: [String], correctAnswers: String){
        self.question = question
        self.options = options
        self.correctAnswers = correctAnswers
    }
    
    func validateOption(_ index: Int) -> Bool {
        let answer = options[index]
        return answer == correctAnswers
    }
    
    deinit {
        print("Liberou um quiz da memória!")
    }
    
}
