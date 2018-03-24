//
//  QuizSpot.swift
//  Quiz
//
//  Created by Roman Schulte on 24.03.18.
//  Copyright © 2018 Roman Schulte. All rights reserved.
//

import UIKit
import CoreLocation

protocol QAQuizSpot {
    var questions: QAQuestion {get}
    var highscores: Any {get}
    
    var qsid: UUID {get}
    var name: String {get}
    var image: UIImage? {get}
    
    var location: CLLocation {get}
}


protocol User {
    var uuid: UUID {get}
    var name: String {get}
    var score: UInt64 {get}
    var image: UIImage? {get}
}


