//
//  ExerciseCell.swift
//  Workout Plan
//
//  Created by Can KINCAL on 17/02/2017.
//  Copyright © 2017 Can KINCAL. All rights reserved.
//

import UIKit

class ExerciseCell: UITableViewCell {
    @IBOutlet weak var exerciseName: UILabel!
    @IBOutlet weak var exerciseSet: UILabel!
    @IBOutlet weak var exerciseRep: UILabel!
    @IBOutlet weak var exerciseDay: UILabel!
    
    func configureCell (exercise: Array<String>) {
        self.exerciseDay.text = exercise[1]
        self.exerciseName.text = exercise[0]
        self.exerciseSet.text = exercise[2]
        self.exerciseRep.text = exercise[3]
    }
    
}
