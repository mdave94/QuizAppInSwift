//
//  QuizBrain.swift
//  Quizzler-iOS13
//
//  Created by David Molnar on 2019. 11. 30..
//  Copyright © 2019. The App Brewery. All rights reserved.
//

import Foundation

struct QuizBrain{
    
    //init the question's array
    let quizArray = [Question(q: "Q1 A slug's blood is green. ", a: "True",cat: "TestAnswer_1"),
                     Question(q: "Q2 Approximately one quarter of human bones are in the feet.", a: "True",cat: "TestAnswer_2"),
                     Question(q: "Q3 The total surface area of two human lungs is approximately 70 square metres.", a: "True",cat: "TestAnswer_3"),
                     Question(q: "Q4 In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.", a: "True",cat: "TestAnswer_4"),
                     Question(q: "Q5 In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.", a: "False",cat: "TestAnswer_5"),
                     Question(q: "Q6 It is illegal to pee in the Ocean in Portugal.", a: "True",cat: "TestAnswer_6"),
                     Question(q: "Q7 You can lead a cow down stairs but not up stairs.", a: "False",cat: "TestAnswer_7"),
                     Question(q: "Q8 Google was originally called 'Backrub'.", a: "True",cat: "TestAnswer_8"),
                     Question(q: "Q9 Buzz Aldrin's mother's maiden name was 'Moon'.", a: "True",cat: "TestAnswer_9"),
                     Question(q: "Q10 The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.", a: "False",cat: "TestAnswer_10"),
                     Question(q: "Q11 No piece of square dry paper can be folded in half more than 7 times.", a: "False",cat: "TestAnswer_11"),
                     Question(q: "Q12 Chocolate affects a dog's heart and nervous system; a few ounces are enough to kill a small dog.", a: "True",cat: "TestAnswer_12")
    ]
    //end of questions
    
    var questionNumber = 0
    var score = 0
    
    //difference between external and internal parameters
    mutating func checkAnswer(_ userAnswer: String) -> Bool{
     
        if userAnswer == quizArray[questionNumber].answer {
            score += 1
            return true
        }else {
            return false
        }
       
    }
    
    func getQuestionText() -> String {
        
        return quizArray[questionNumber].text
    }
    
    func getProgress () -> Float {
        
        return Float(questionNumber) / Float(quizArray.count)
    }
    
    mutating func nextQuestion() {
        if questionNumber+1 < quizArray.count {
            questionNumber += 1
            
        }else {
            questionNumber = 0
            score = 0
        }
         

    }
    
    func getAnswer() -> String {
        return quizArray[questionNumber].correctAnswerText
    }
    
    func getScore() -> Int {
        return score
            
    }
    
}
