//
//  aboutMeViewController.swift
//  PersonalApp
//
//  Created by Zuri Wong on 2/9/18.
//  Copyright © 2018 Zuri Wong. All rights reserved.
//

import UIKit

class aboutMeViewController: UIViewController {


    @IBOutlet weak var profilePictureImageView: UIImageView!
    @IBOutlet var connectWithMeButton: UIButton!
    @IBOutlet var titleLabel: CLTypingLabel!
    @IBOutlet var backgroundImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //only apply the blur if the user hasn't disabled transparency effects
        if !UIAccessibilityIsReduceTransparencyEnabled() {
            view.backgroundColor = .clear
            
            let blurEffect = UIBlurEffect(style: .dark)
            let blurEffectView = UIVisualEffectView(effect: blurEffect)
            //always fill the view
            blurEffectView.frame = backgroundImageView.bounds
            blurEffectView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
            
            backgroundImageView.addSubview(blurEffectView) //if you have more UIViews, use an insertSubview API to place it where needed
        } else {
            backgroundImageView.backgroundColor = .black
        }
        
//        profilePictureImageView.layer.borderWidth = 2.0
//        profilePictureImageView.layer.masksToBounds = false
//        profilePictureImageView.layer.borderColor = UIColor.white.cgColor
//        profilePictureImageView.layer.cornerRadius = profilePictureImageView.frame.height/2
//        profilePictureImageView.clipsToBounds = true
        
        
        connectWithMeButton.layer.borderWidth = 1
        connectWithMeButton.layer.masksToBounds = false
        connectWithMeButton.layer.borderColor = UIColor.white.cgColor
        connectWithMeButton.layer.cornerRadius = 20
        connectWithMeButton.clipsToBounds = true
        
        titleLabel.text! = "Zuri Wong"
        
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
