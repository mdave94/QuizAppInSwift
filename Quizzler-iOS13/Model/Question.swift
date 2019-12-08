//
//  Question.swift
//  Quizzler-iOS13
//
//  Created by David Molnar on 2019. 11. 30..
//  Copyright © 2019. The App Brewery. All rights reserved.
//

import Foundation

struct Question{
    let text: String
    let answer: String
    let correctAnswerText: String
    
    init(q: String, a:String,cat:String) {
        text = q
        answer = a
        correctAnswerText = cat
    }
}
