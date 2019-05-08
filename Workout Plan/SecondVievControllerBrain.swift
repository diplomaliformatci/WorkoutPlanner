//
//  SecondVievControllerBrain.swift
//  Workout Plan
//
//  Created by Can KINCAL on 17/02/2017.
//  Copyright © 2017 Can KINCAL. All rights reserved.
//

import Foundation

class SecondViewControllerBrain {
    private let height: Int
    private let wrist: Int
    private let neck: Int
    private let gender: Int
    private let experience: Int
    private let lifeStyle: Int
    private var _totalpoint = 0
    private var _person: Int = 0
    
    var person: Int {
        return _person
    }
    
    var totalpoint: Int {
        return _totalpoint
    }
    init(bodyType: Dictionary<String,Int>) {
        self.height = bodyType["height"]!
        self.wrist = bodyType["wrist"]!
        self.neck = bodyType["neck"]!
        self.gender = bodyType["gender"]!
        self.experience = bodyType["experience"]!
        self.lifeStyle = bodyType["lifeStyle"]!
        calculateTotalPoint()
    }
    
    func calculateTotalPoint() {
        let heightPoint = calculateHeightPoint()
        let wristPoint = calculateWristPoint()
        let neckPoint = calculateNeckPoint()
        let snowBall = heightPoint * wristPoint * neckPoint
        let faktor:Double = Double(experience + 1 * lifeStyle + 1)
        print ("im hereee")
        print(snowBall , "    ",faktor)
        if snowBall * faktor > 10.0 {
            _person = 4
        }
            
        else if snowBall * faktor > 8 {
            _person = 3
        }
            
        else if snowBall * faktor > 6 {
            _person = 2
        }
            
        else if snowBall * faktor > 4{
            _person = 1
        }
        else{
            _person = 0
        }
    }
    
    func calculateHeightPoint() -> Double {
        let heightPoint: Double
        
        if neck == 0 {
//            message
        }
        if gender == 0 {
            if height / neck < 5 {
                heightPoint = 1.0
            }
            else {
                heightPoint = 2.0
            }
        }
            
        else {
            if height / neck < 4 {
                heightPoint = 1.0
            } else {
                heightPoint = 2.0
            }
            
        }
        
        return heightPoint
        
    }
    
    func calculateWristPoint() -> Double {
        let wristPoint: Double
        if gender == 0 {
            if wrist < 20 {
                wristPoint = 1.0
            }
            else {
                wristPoint = 2.0
            }
        }
        else {
            if wrist < 15 {
                wristPoint = 1.0
            }
            else {
                wristPoint  = 2.0
            }
            
        }
        
        return wristPoint
    }
    
    
    func calculateNeckPoint() -> Double {
        let neckPoint: Double
        if gender == 0 {
            if neck > 40 {
                neckPoint = 2.0
            }
            else {
                neckPoint = 1.0
            }
        }
        else {
            if neck > 30{
                neckPoint = 2.0
            }
            else {
                neckPoint = 1.0
            }
            
        }
        return neckPoint
    }
    
    
    
    
    
    
}

