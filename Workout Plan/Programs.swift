//
//  Programs.swift
//  Workout Plan
//
//  Created by Can KINCAL on 17/02/2017.
//  Copyright © 2017 Can KINCAL. All rights reserved.
//



import Foundation

class Programs {
    init() {
        
    }
    private var Program1 = ["Day1" : ["Bench Press" : [5 : 5] ,
                                      "Barfiks" : [5 : 5] ,
                                      "Squat" : [5 : 5] ,
                                      "Overhead Press" : [5 : 5] ,
                                      "Deadlift" : [5 : 5] ,
                                      
        ],
                            "Day2" : ["Bench Press" : [5 : 5] ,
                                      "Barfiks" : [5 : 5] ,
                                      "Squat" : [5 : 5] ,
                                      "Overhead Press" : [5 : 5] ,
                                      "Deadlift" : [5 : 5]
        ] ,
                            "Day3" : ["Bench Press" : [5 : 5] ,
                                      "Barfiks" : [5 : 5] ,
                                      "Squat" : [5 : 5] ,
                                      "Overhead Press" : [5 : 5] ,
                                      "Deadlift" : [5 : 5]
        ]
    ]

    
    
    
//
//    "Day1":["Bench Press" : [5:5]] ,
//    "Day1":["Barfiks" : [5:5]] ,
//    "Day2":["Squat" : [5:5]] ,
//    "Day2":["Overhead Press" : [5:5]] ,
//    "Day2":["Deadlift" : [5:5]] ,
//    "Day2":["Dips" : [5:5]] ,
//    "Day3":["Squat" : [5:5]] ,
//    "Day3":["Bench Press" : [5:5]] ,
//    "Day3":["Barbell Row" : [5:5]] ,
//    "Day3":["Barbell Curl" : [3:12]] ,
//    "Day1":["Skull Crusher" : [3:12]]
//    
    
    
    
    
    
    
    
    private var Program2 = ["Day1" : ["Bench Press" : [5 : 5] ,
                                      "Barfiks" : [5 : 5] ,
                                      "Squat" : [5 : 5] ,
                                      "Barbell Curl" : [3 : 12] ,
                                      "Triceps Pushdown" : [3 : 12]
                                      
        
        ],
                            "Day2" : ["Bench Press" : [5 : 5] ,
                                      "Barfiks" : [5 : 5] ,
                                      "Squat" : [5 : 5] ,
                                      "Deadlift" : [5 : 5] ,
                                      "Barbell Row" : [4 : 12]
        ] ,
                            "Day3" : ["Bench Press" : [5 : 5] ,
                                      "Overhead Press" : [5 : 5] ,
                                      "Deadlift" : [5 : 5] ,
                                      "Barbell Curl" : [3: 12] ,
                                      "Triceps Pushdown" : [3 : 12]
        ]
    ]
    private var Program3 = ["Day1" : ["Bench Press" : [5 : 5] ,
                                      "Barfiks" : [5 : 5] ,
                                      "Squat" : [5 : 5] ,
                                      "Overhead Press" : [5 : 5] ,
                                      "Deadlift" : [5 : 5]
        
        ],
                            "Day2" : ["Bench Press" : [5 : 5] ,
                                      "Barfiks" : [5 : 5] ,
                                      "Squat" : [5 : 5] ,
                                      "Overhead Press" : [5 : 5] ,
                                      "Deadlift" : [5 : 5]
        ] ,
                            "Day3" : ["Bench Press" : [5 : 5] ,
                                      "Barfiks" : [5 : 5] ,
                                      "Squat" : [5 : 5] ,
                                      "Overhead Press" : [5 : 5] ,
                                      "Deadlift" : [5 : 5]
        ]
    ]
    private var Program4 = ["Day1" : ["Bench Press" : [5 : 5] ,
                                     "Barfiks" : [5 : 5] ,
                                     "Squat" : [5 : 5] ,
                                     "Overhead Press" : [5 : 5] ,
                                     "Deadlift" : [5 : 5] ,
                                     "Barbell Curl " : [3 : 12],
                                     "Triceps Pushdown" : [3 : 12]
        
        ],
                           "Day2" : ["Bench Press" : [5 : 5] ,
                                     "Barfiks" : [5 : 5] ,
                                     "Squat" : [5 : 5] ,
                                     "Overhead Press" : [5 : 5] ,
                                     "Deadlift" : [5 : 5] ,
                                     "Barbell Curl" : [3 : 12] ,
                                     "Triceps Pushdown" : [3 : 12] ,
                                     "Saide Raise" : [3 : 12]
        ] ,
                           "Day3" : ["Bench Press" : [5 : 5] ,
                                     "Barfiks" : [5 : 5] ,
                                     "Squat" : [5 : 5] ,
                                     "Overhead Press" : [5 : 5] ,
                                     "Deadlift" : [5 : 5] ,
                                     "Face Pull " : [3 : 12] ,
                                     "Saide Raise" : [3 : 12] ,
                                     "Barbell Curl" : [3 : 12],
                                     "Skull Crusher" : [3 : 12] 
                            
        ]
    ]
    
    
    
    func chaseProgram (sender: Int) -> Dictionary<String,Dictionary<String,Dictionary<Int,Int>>> {
        switch sender {
        case 1:
            return Program1
        case 2:
            return Program2
        case 3:
            return Program3
        case 4:
            return Program4
        default:
            print("There is an error")
            break
        }
        return Program1
}
}
