//
//  AuthorAboutViewController.swift
//  bullseye
//
//  Created by wiston on 6/4/19.
//  Copyright © 2019 IDev. All rights reserved.
//

import UIKit
import WebKit

class AuthorAboutViewController: UIViewController {

    @IBOutlet weak var webView: WKWebView!
    
  
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let htmlPath = Bundle.main.path(forResource: "index", ofType: "html") {
            let url = URL(fileURLWithPath: htmlPath)
            let request = URLRequest(url: url)
            webView.load(request)
        }

    }
    
    
    
    @IBAction func close () {
        dismiss(animated: true, completion: nil)
    }


}
