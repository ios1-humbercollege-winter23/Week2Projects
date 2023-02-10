//
//  MyFirstViewController.swift
//  MyHelloWorldApp
//
//  Created by Rania Arbash on 2023-01-20.
//

import UIKit
// MVC
class MyFirstViewController: UIViewController {
    @IBOutlet weak var helloWorld: UILabel!
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var userNameText: UITextField!
    
    @IBOutlet weak var LogOutButton: UIButton!
    
    var counter : Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        helloWorld.text = "Hello iOS 1"

    }
   
    @IBAction func logInClicked(_ sender: Any) {
        counter += 1
        
        helloWorld.text = "You click the button \(counter) times "
    }
    
    @IBAction func logOutButtonClicked(_ sender: Any) {
        
        if let name = userNameText.text{
            if !(name.isEmpty)
            {
                helloWorld.text = name
            }else {
                helloWorld.text = "No Name Inserted!!"
            }
        }
        
    }
    override func viewWillAppear(_ animated: Bool) {
        
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        
    }

  
    
    @IBAction func numberClicked(_ sender: UIButton) {
        
        let buttonTitle =  sender.titleLabel?.text
        helloWorld.text = buttonTitle
        
    }
    
    @IBAction func switchClicked(_ sender: Any) {
        image.image = UIImage(named: "montreal_img")
        
        
        
    }
    
}
