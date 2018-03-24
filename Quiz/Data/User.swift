//
//  User.swift
//  Quiz
//
//  Created by Roman Schulte on 24.03.18.
//  Copyright © 2018 Roman Schulte. All rights reserved.
//

import Foundation


class User {
    static var currentUser: UInt32 {
        var id = UserDefaults.standard.integer(forKey: "user.id")
        
        if id <= 0 {
            id = arc4random().hashValue
            UserDefaults.standard.set(id, forKey: "user.id")
        }

        return UInt32(id)
    }
    
    let userID: UInt32
    let name: String
    
    var points: UInt32
    
    init(userID: UInt32, name: String, points: UInt32) {
        self.userID = userID
        self.name = name
        self.points = points
    }
}
