//
//  ViewController.swift
//  bullseye
//
//  Created by wiston on 5/28/19.
//  Copyright © 2019 IDev. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func showAlert(){
        
        //Step 1 --> Create an alert Controller.
        let alert = UIAlertController(title: "Hello Universe!", message: "this is my first app", preferredStyle: .alert)
        
        //Step 2 --> Create an alert action to show the button inside the alert.
        let action = UIAlertAction(title: "Awesome!", style: .default, handler: nil)
        
        //Add the action button to the alert.
        alert.addAction(action)
        
        //attached the alert to the the view controller.
        present(alert, animated: true, completion: nil)
        
    }

}

