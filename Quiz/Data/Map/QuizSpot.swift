//
//  QuizSpot.swift
//  Quiz
//
//  Created by Roman Schulte on 24.03.18.
//  Copyright © 2018 Roman Schulte. All rights reserved.
//

import CoreLocation
import MapKit

class QuizSpot: NSObject {
    let location: CLLocation
    let qsid: UInt32
    let name: String
    
    init(qsid: UInt32, name: String, location: CLLocation) {
        self.qsid = qsid
        self.name = name
        self.location = location
        
        super.init()
    }
    
    func fetchQuestions(completion: @escaping ([Any], Error?) -> ()) {
        
    }
    
    func fetchHighscores(completion: @escaping ([Any], Error?) -> ()) {
        
    }
}

extension QuizSpot: MKAnnotation {
    var coordinate: CLLocationCoordinate2D {
        return location.coordinate
    }
    
    var title: String? {
        return name
    }
}


