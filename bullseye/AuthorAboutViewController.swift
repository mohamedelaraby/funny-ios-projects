//
//  AuthorAboutViewController.swift
//  bullseye
//
//  Created by wiston on 6/4/19.
//  Copyright © 2019 IDev. All rights reserved.
//

import UIKit

class AuthorAboutViewController: UIViewController {

    @IBOutlet weak var image: UIImage!
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func close () {
        dismiss(animated: true, completion: nil)
    }


}
