//
//  GameController.swift
//  Quiz
//
//  Created by Roman Schulte on 24.03.18.
//  Copyright © 2018 Roman Schulte. All rights reserved.
//

import UIKit

class GameController: UIViewController {
    @IBOutlet weak var questionLabel: UILabel!
    
    @IBOutlet weak var answerButton0: UIButton!
    @IBOutlet weak var answerButton1: UIButton!
    @IBOutlet weak var answerButton2: UIButton!
    @IBOutlet weak var answerButton3: UIButton!
    
    
    @IBOutlet weak var timeBar: UIView!
    
    var answerButtons: [UIButton] {
        return [answerButton0, answerButton1, answerButton2, answerButton3]
    }
    
}
