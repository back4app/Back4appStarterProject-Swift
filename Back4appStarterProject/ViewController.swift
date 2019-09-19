//
//  ViewController.swift
//  Back4appStarterProject
//
//  Created by Venom on 19/09/19.
//  Copyright © 2019 Venom. All rights reserved.
//

import UIKit
import Parse

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    // Some sample code that will run when the View appears
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        let gameScore = PFObject(className:"GameScore")
        gameScore["score"] = 1337
        gameScore["playerName"] = "Sean Plott"
        gameScore["cheatMode"] = false
        gameScore.saveInBackground { (succeeded, error)  in
            if (succeeded) {
                // The object has been saved.
            } else {
                // There was a problem, check error.description
            }
        }

    }


}

