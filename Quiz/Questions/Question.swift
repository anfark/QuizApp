//
//  Question.swift
//  Quiz
//
//  Created by Roman Schulte on 24.03.18.
//  Copyright © 2018 Roman Schulte. All rights reserved.
//

import UIKit


protocol QAQuestion {
    var qid: UUID {get}
    
    var image: UIImage? {get}
    
    var text: String {get}
    
    var answers: [String] {get}
    
    var correctAnswer: Int {get}
    
    var meta: QAQuestionMeta {get}
}


protocol QAQuestionMeta {
    var creationDate: Date {get}
    var creator: String {get}
    
    var occurrences: Int {get}
    var correctAnswered: Double {get}
}

enum Difficulty {
    case easy
    case medium
    case hard
}

