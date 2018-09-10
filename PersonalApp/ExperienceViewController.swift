//
//  ExperienceViewController.swift
//  PersonalApp
//
//  Created by Zuri Wong on 3/22/18.
//  Copyright © 2018 Zuri Wong. All rights reserved.
//

import UIKit

class ExperienceViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        var lineView = UIView(frame: CGRect(x: 55, y: 148, width: 201, height: 1.0))
        lineView.layer.borderWidth = 1.0
        lineView.layer.borderColor = UIColor.black.cgColor
        self.view.addSubview(lineView)
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
