//
//  FirstViewController.swift
//  Workout Plan
//
//  Created by Can KINCAL on 17/02/2017.
//  Copyright © 2017 Can KINCAL. All rights reserved.
//

import UIKit
var oldText: String = ""
var chasedProgram: Dictionary<String,Dictionary<String,Dictionary<Int,Int>>> = [:]
var exerciseArray: Array<Array<String>> = []

class FirstViewController: UIViewController{
    
    @IBOutlet weak var genderSelector: UISegmentedControl!
    
    @IBOutlet weak var wristTextField: UITextField!
    
    @IBOutlet weak var heightTextField: UITextField!
    
    @IBOutlet weak var neckTextField: UITextField!
    @IBOutlet weak var experienceSelector: UISegmentedControl!
    @IBOutlet weak var lifeStyleSelector: UISegmentedControl!
    
    var valuecontrol: Bool = true
    var bodyType: Dictionary<String,Int> = [:]
   
  
    override func viewDidLoad() {
        super.viewDidLoad()
        oldText = read()
        writeDictionary(property: "read")
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    func write(myText: String) {
        let myTextString = NSString(string: myText)
        let destinationPath = NSTemporaryDirectory() + "my_file.txt"
        
        do {
            let _ = try myTextString.write(toFile: destinationPath, atomically: true, encoding: String.Encoding.utf8.rawValue)
            
        } catch {
            print("Hey there is an error in writing file")
        }
        
    }
    
    func writeDictionary (property: String) {
        let propertyList = ["givenname" : "john" , "familyname" : "smith"]
        do {
            switch property {
            case "write":
            _ = try PropertyListSerialization.data(fromPropertyList: propertyList, format: .xml, options: 0)
            break
            case "read":
            let propertyList2 = try PropertyListSerialization.propertyList(from: PropertyListSerialization.data(fromPropertyList: propertyList, format: .xml, options: 0), options: [] , format: nil )
            print(propertyList2)
            break
            default:
            break
        
            }
            } catch {
            print("there is an error")
        }
    }
    
    func read () -> String{
        let path = NSTemporaryDirectory() + "my_file.txt"
        do {
            let fileContents = try NSString(contentsOfFile: path, encoding: String.Encoding.utf8.rawValue)
            let string = fileContents as String
            return string
        } catch {
            print("Hey there is an error when reading file")
        }
        return ""
    }
    
    @IBAction func doneBtnPressed(_ sender: Any) {
        self.bodyType = saveStats()
        var arr = [String]()
        if valuecontrol {
            let personRef = SecondViewControllerBrain(bodyType: self.bodyType)
            print(personRef.person)
            print(personRef.totalpoint)
            let Program = Programs()
            chasedProgram = Program.chaseProgram(sender: personRef.person)
            let text: String = ""
            for day in chasedProgram {
                for exercise in day.value {
                    for setrep in exercise.value {
                    arr.append(exercise.key)
                    arr.append(day.key)
                    arr.append("\(setrep.key)")
                    arr.append("\(setrep.value)")
                    exerciseArray.append(arr)
                        arr = []
                    print(exercise.key)
                    print(exercise.key)
                    print("HERE: I am in the doneBtnPressed second loop")
                
                }
                }
                print(day)
               
             
                
            }
            write(myText: text)
          
            
        }
        self.valuecontrol = true
    }
    func sendErrorMsg(msgSender: String ) {
       let alert : UIAlertView = UIAlertView(title: "Hey", message: "\(msgSender.capitalized) can't be skip",       delegate: nil, cancelButtonTitle: "Back")
        bodyType["\(msgSender)"] = 0
        alert.show()
    }
    
    func saveStats() -> Dictionary<String,Int>{
        
        bodyType["gender"] = genderSelector.selectedSegmentIndex
        bodyType["experience"] = experienceSelector.selectedSegmentIndex
        bodyType["lifeStyle"] = lifeStyleSelector.selectedSegmentIndex
        if let wrist = Int(wristTextField.text!) {
            bodyType["wrist"] = wrist
        }
        else {
            sendErrorMsg(msgSender: "wrist")
            self.valuecontrol = false
        }
        if let height = Int(heightTextField.text!) {
            bodyType["height"] = height
        }
        else {
            sendErrorMsg(msgSender: "height")
            self.valuecontrol = false
        }
        if let neck = Int(neckTextField.text!){
            bodyType["neck"] = neck
        }
        else {
            sendErrorMsg(msgSender: "neck")
            self.valuecontrol = false
        }
        for (i,j) in bodyType {
            print(i , "   "  ,  j)
        }
        
        return bodyType
    }
    
    
    
    
    
}

