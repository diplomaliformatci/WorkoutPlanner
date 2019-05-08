//
//  SecondViewController.swift
//  Workout Plan
//
//  Created by Can KINCAL on 17/02/2017.
//  Copyright © 2017 Can KINCAL. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController , UITableViewDelegate , UITableViewDataSource {
    var i: Int = 0
    var arr: [String] = []
    //var Exercises = []
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return exerciseArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       
            if let cell = tableView.dequeueReusableCell(withIdentifier: "ExerciseCell" , for: indexPath) as? ExerciseCell {
                let exercise = exerciseArray[indexPath.row]
                print("There are exercise Array Items")
                print(exerciseArray[0])
                print(exerciseArray[1])
                print("These are exercise items")
                print(exercise)
                print(exercise)
                print(exercise)
                cell.configureCell(exercise: exercise)
            return cell
            }
        
        
        else {
            return ExerciseCell()
        }
        
    }
    
    


}

