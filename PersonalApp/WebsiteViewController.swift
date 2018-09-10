//
//  WebsiteViewController.swift
//  PersonalApp
//
//  Created by Zuri Wong on 9/9/18.
//  Copyright © 2018 Zuri Wong. All rights reserved.
//

import Foundation
import UIKit
import WebKit

class WebsiteViewController: UIViewController, WKNavigationDelegate{
    
    @IBOutlet var webView: WKWebView!
    
    override func viewDidLoad() {
        
        webView.navigationDelegate = self
        let url = URL(string: "http://www.zuriwong.com")
        let request = URLRequest(url: url!)
        webView.load(request)
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func webView(_ webView: WKWebView, didFailProvisionalNavigation navigation: WKNavigation!, withError error: Error) {
        
        /*
         
         Ignore this error if the page is instantly redirected via JavaScript or in another way.
         
         NSURLErrorCancelled is returned when an asynchronous load is cancelled, which happens
         
         when the page is instantly redirected via JavaScript or in another way.
         
         */
        
        
        
        if (error as NSError).code == NSURLErrorCancelled  {
            
            return
            
        }
        
        
        
        // An error occurred during the web page load. Hide the activity indicator in the status bar.
        
        UIApplication.shared.isNetworkActivityIndicatorVisible = false
        
        
        
        // Create the error message in HTML as a character string and store it into the local constant errorString
        
        let errorString = "<html><font size=+4 color='red'><p>Unable to Display Webpage: <br />Possible Causes:<br />- No network connection<br />- Wrong URL entered<br />- Server computer is down</p></font></html>" + error.localizedDescription
        
        
        
        // Display the error message within the webView object
        
        self.webView.loadHTMLString(errorString, baseURL: nil)
        
    }
}
