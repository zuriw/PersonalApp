//
//  LanguagesViewController.swift
//  PersonalApp
//
//  Created by Zuri Wong on 4/24/18.
//  Copyright © 2018 Zuri Wong. All rights reserved.
//

import UIKit

class LanguagesViewController: UIViewController {
    @IBOutlet var javaProgressView: UIProgressView!
    @IBOutlet var cSharpProgressView: UIProgressView!
    @IBOutlet var swiftProgressView: UIProgressView!
    @IBOutlet var vbProgressView: UIProgressView!
    @IBOutlet var javaScriptProgressView: UIProgressView!
    var timer: Timer!
    var updateCounter: Double!
    var javaNum = 85.0
    var cSharpNum = 80.0
    var swiftNum = 70.0
    var vbNum = 80.0
    var javaScriptNum = 40.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.updateCounter = 0
        self.timer = Timer.scheduledTimer(
            timeInterval: 0.01,
            target: self,
            selector: #selector(LanguagesViewController.updateTimer),
            userInfo: nil,
            repeats: true
        )
        // Do any additional setup after loading the view.
    }
    
    @objc internal func updateTimer(){
        
        if updateCounter < javaNum {
            javaProgressView.progress = Float(updateCounter / 100)
        }
        
        if updateCounter < cSharpNum {
            cSharpProgressView.progress = Float(updateCounter / 100)
        }
        
        if updateCounter < swiftNum{
            swiftProgressView.progress = Float(updateCounter / 100)
        }
        
        if updateCounter < vbNum{
            swiftProgressView.progress = Float(updateCounter / 100)
        }
        
        if updateCounter < javaScriptNum{
            javaScriptProgressView.progress = Float(updateCounter / 100)
        }
        updateCounter = updateCounter + 1
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
