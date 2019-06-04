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
        
        sliderStyle()
        
        //Close the value of the slider.
        let roundedValue = slider.value.rounded()
        currentValue = Int (roundedValue)
        startOver()
    }

    
    
    //Style the slider.
    func sliderStyle(){
        
        //for normal state
        let thumbNailNormal = #imageLiteral(resourceName: "SliderThumb-Normal")
        slider.setThumbImage(thumbNailNormal, for: .normal)
        
        //For highlghted state.
        let thumbNailHighlight = #imageLiteral(resourceName: "SliderThumb-Highlighted")
        slider.setThumbImage(thumbNailHighlight, for: .highlighted)
        
        //left image
        let inset = UIEdgeInsets(top: 0, left: 14, bottom: 0, right: 14)
        let trackLeftImage = #imageLiteral(resourceName: "SliderTrackLeft")
        let trackLeftImageResizable = trackLeftImage.resizableImage(withCapInsets: inset)
        slider.setMinimumTrackImage(trackLeftImageResizable, for: .normal)
        
        //Right image.
        let trackrightImage = #imageLiteral(resourceName: "SliderTrackRight")
        let trackRightImageResizable = trackrightImage.resizableImage(withCapInsets: inset)
        slider.setMaximumTrackImage(trackRightImageResizable, for: .normal)
    }
    
    
    
    
    
    
    
    
    @IBAction func showAlert( ){
        
        //calculate the diffrenece between target vallue and the slider value.
        let difference = abs(targetValue - currentValue)
        var points = 100 - difference
        
        //assign the points value to the score value.
        scorevalue += points
       
        let title: String
        if difference == 0 {
            title = "Perfect!"
            points += 100
      
        }else if difference < 5 {
            title = "You almost had it!"
            
            if difference == 1 {
                points += 50
            }
        } else if difference  < 10 {
            title = "Pretty good"
        }else {
            title = "Not even Close..."
        }
        
        //alert message.
        let message = "Your scored \(points) points."
        
        //Create an alert Controller.
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        
        //Create an alert action to show the button inside the alert.
        let action = UIAlertAction(title: "Ok", style: .default, handler: {
        action in
            self.newRound()
        })

        //Add the action button to the alert.
        alert.addAction(action)
        
        //attached the alert to the the view controller.
        present(alert, animated: true, completion: nil)
        //Staسrt a new round.
   
        
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
 newRound()
    }
    
}
        


