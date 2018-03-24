//
//  Configuration.swift
//  Quiz
//
//  Created by Daniel Wörner on 24.03.18.
//  Copyright © 2018 Roman Schulte. All rights reserved.
//


 
import CoreLocation

class ServerConfig {
    
    static let host: URL = URL(string: "http://192.168.233.141:8081")!
    
    
    struct SendLocation: Codable {                       //Aktueller Ort Senden
        
        let userID: UInt32
        
        let lat: Double
        
        let long: Double
    }
    
    struct RecvLocations: Codable {                      //Locations in der Nähe empfangen
        struct Spot: Codable {
            let name: String
            let lat: Double
            let long: Double
        }
        
        let spots: [Spot]
    }
   
    struct ChoosedLoc {                         //Ausgewähle Location senden
        
        let location: String
        }
    
    struct RecvQuestions {                      //Fragen zum Ort empfangen
    
        let questions: String
        
        let answer: String
        }
    
    struct SendOutcome {                        //Information über Ergebnis senden
        
        let outcome: String
        }
    
    
    init() {                         // Wird zuerst aufgerufen
      
    }
    
    

    
    func requestQuizSpots(_ location: SendLocation, completion: @escaping (RecvLocations?, Error?) -> ()) {
        
        
        let encoder = JSONEncoder()
        
        do {
            let jsonData = try encoder.encode(location)
            var request = URLRequest(url: ServerConfig.host.appendingPathComponent("question"))
            
            request.httpBody = jsonData
            request.httpMethod = "GET"
            
            let task = URLSession.shared.dataTask(with: request) {
                data, response, error in
                
                guard let data = data else {
                    completion(nil, error)
                    return
                }
                
                do {
                    let decoder = JSONDecoder()
                    let resp = try decoder.decode(RecvLocations.self, from: data)
                    
                    completion(resp, nil)
                    return
                }
                catch let error {
                    completion(nil, error)
                }
                
            }
            
            task.resume()
            
        }catch let error {
            completion(nil, error)
            return
        }

    }
}



