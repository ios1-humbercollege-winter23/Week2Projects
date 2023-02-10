//
//  ViewController.swift
//  StudentsApp
//
//  Created by Rania Arbash on 2023-01-20.
//

import UIKit

// MVC

class ViewController : UIViewController {
    
    @IBOutlet weak var numberText: UILabel!
    @IBOutlet weak var nameText: UILabel!
    
    @IBOutlet weak var ageText: UILabel!

    var allStudentsArray = studentList
    var index = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI(currentIndex: index)
    }

    @IBAction func nextClicked(_ sender: Any) {
        index += 1
        if index < allStudentsArray.count{
            updateUI(currentIndex: index)
        }else {
            index = 0
            updateUI(currentIndex: index)
        }
            
    }
    
    @IBAction func prevClicked(_ sender: Any) {
        index -= 1
        if (index < allStudentsArray.count) && (index > 0) {
            updateUI(currentIndex: index)
        }else {
            index = 0
            updateUI(currentIndex: index)
        }
            
    }
    
    func updateUI(currentIndex : Int) {
        nameText.text = "Name :" + allStudentsArray[currentIndex].name
        numberText.text = "Numbe :" + allStudentsArray[currentIndex].number
        ageText.text =  " Age : \(allStudentsArray[currentIndex].age)"
    }
    
}

