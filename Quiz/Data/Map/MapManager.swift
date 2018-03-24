//
//  MapController.swift
//  Quiz
//
//  Created by Roman Schulte on 24.03.18.
//  Copyright © 2018 Roman Schulte. All rights reserved.
//

import CoreLocation

protocol MapManagerDelegate {
    func mapManager(_ manager: MapManager, didUpdate location: CLLocation)
    
    func mapManager(_ manager: MapManager, didUpdate quizSpots: QuizSpot)
}

class MapManager: NSObject {
    private let locationManager: CLLocationManager
    
    var nearQuizStops: [QuizSpot] = []
    var delegate: MapManagerDelegate?
    
    init(locationManager: CLLocationManager = CLLocationManager()) {
        self.locationManager = CLLocationManager()
        
        super.init()
        
        
        
        locationManager.startUpdatingLocation()
        locationManager.delegate = self
    }
    
    func requestPermission() {
        locationManager.requestWhenInUseAuthorization()
    }
}

extension MapManager: CLLocationManagerDelegate {
    
    var location: CLLocation? {
        return locationManager.location
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        logDebug("TODO request new quiz spots")
        delegate?.mapManager(self, didUpdate: locations[0])
    }
}
