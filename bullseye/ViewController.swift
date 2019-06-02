//
//  ViewController.swift
//  bullseye
//
//  Created by wiston on 5/28/19.
//  Copyright © 2019 IDev. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var currentValue = 0
    var targetValue = 0
    var scorevalue = 0
    var roundNumber = 0
    

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
        
        //calculate the diffrenece between target vallue and the slider value.
        let difference = abs(targetValue - currentValue)
        let points = 100 - difference
        
        //assign the points value to the score value.
        scorevalue += points
       
        //alert message.
        let message = "Your scored \(points) points."
        
        //Create an alert Controller.
        let alert = UIAlertController(title: "Hello Universe!", message: message, preferredStyle: .alert)
        
        //Create an alert action to show the button inside the alert.
        let action = UIAlertAction(title: "Awesome!", style: .default, handler: nil)

        //Add the action button to the alert.
        alert.addAction(action)
        
        //attached the alert to the the view controller.
        present(alert, animated: true, completion: nil)
        //Start a new round.
        newRound()
        
    }
    
   
    
    //Change the round.
    func newRound () {
        targetValue = Int.random(in: 1...100)
        currentValue = 25
        slider.value = Float (currentValue)
        roundNumber += 1
        updateLabel()
    }
 
    //MARK: Update labels.
    func updateLabel() {
        targetNumber.text = String(targetValue)
         score.text = String(scorevalue)
        round.text = String(roundNumber)
    }
    
    // MARK:-- Start over the game again.
    @IBAction func startOverAgain() {
        startOver()
    }
    
    func startOver() {
        scorevalue = 0
        roundNumber = 0
        currentValue = 25
    }
    
}
        


