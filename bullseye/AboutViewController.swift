//
//  AboutViewController.swift
//  bullseye
//
//  Created by wiston on 6/4/19.
//  Copyright © 2019 IDev. All rights reserved.
//

import UIKit
import WebKit
class AboutViewController: UIViewController {

 @IBOutlet weak var webView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        //Load html page into web view
        //1 -- Create the html path to the page.
        if  let htmlPath = Bundle.main.path(forResource: "BullsEye", ofType: "html") {
            let url = URL(fileURLWithPath:htmlPath)
            let request = URLRequest(url: url)
            webView.load(request)
        }
       
        
    }
    
  
  
  
    
 
    
   
    //2 --Create url for this path.
    //3 -- set request to this url.
    //4 -- set its content to web view .
    

    @IBAction func close () {
        dismiss(animated: true, completion: nil)
    }

}
