//
//  ViewController.swift
//  bullseye
//
//  Created by wiston on 5/28/19.
//  Copyright © 2019 IDev. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    //Hold the slider current value.
    var currentValue : Int = 0

    //Connect the slider to the code.
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var targetNumber: UILabel!
    @IBOutlet weak var score: UILabel!
    @IBOutlet weak var round: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Close the value of the slider.
        let roundedValue = slider.value.rounded()
        currentValue = Int (roundedValue)
    }

   
    
    
    @IBAction func showAlert( ){
   
        let message = "the slider value now is: \(currentValue)"

        //Step 1 --> Create an alert Controller.
        let alert = UIAlertController(title: "Hello Universe!", message: message, preferredStyle: .alert)
        
        //Step 2 --> Create an alert action to show the button inside the alert.
        let action = UIAlertAction(title: "Awesome!", style: .default, handler: nil)
//
        //Add the action button to the alert.
        alert.addAction(action)
        
        //attached the alert to the the view controller.
        present(alert, animated: true, completion: nil)
        
    }
    
    //get the slider value
    @IBAction func ShowSlider (_ slider: UISlider) {
        
        
    }
        
        
        
        
        
        
        
        
        
   

}

