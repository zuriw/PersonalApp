//
//  LinkedInViewController.swift
//  PersonalApp
//
//  Created by Zuri Wong on 4/24/18.
//  Copyright © 2018 Zuri Wong. All rights reserved.
//

import UIKit
import WebKit

class LinkedInViewController: UIViewController {
    @IBOutlet var webView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let linkedInURL = URL(string: "https://www.linkedin.com/in/zuri-wong-363608104")
        // Obtain the URLRequest structure instance from the given companyUrl
        let request = URLRequest(url: linkedInURL!)
        
        // Ask the web view object to display the web page for the requested URL
        webView.load(request)
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
