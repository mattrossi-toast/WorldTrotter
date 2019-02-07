//
//  WebViewController.swift
//  WorldTrotter
//
//  Created by Rossi, Matthew Th on 2/6/19.
//  Copyright © 2019 Rossi, Matthew. All rights reserved.
//

import UIKit
import WebKit

class WebViewController: UIViewController{
    @IBOutlet weak var webView: WKWebView!
    
    override func viewDidLoad(){
        super.viewDidLoad()
        let url = URL(string:"https://bignerdranch.com")
        
        if let newURL = url {
            let request = URLRequest(url: newURL)
            let session = URLSession.shared
            let dataTask = session.dataTask(with: request){
                
                (data,response,error) in
                
                if error == nil {
                        DispatchQueue.main.async { //force webview load to run on main thread
                            self.webView.load(request)
                        }
                    } else {
                    print("Unexpected error: \(error!)")
                }
                
            }
            dataTask.resume()
        }
        
    }
}
