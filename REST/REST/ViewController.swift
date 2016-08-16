//
//  ViewController.swift
//  REST
//
//  Created by Ben Wernsman on 8/15/16.
//  Copyright © 2016 BenWernsman. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        print("App Loaded")
        config.getConfig()
        print(info.restURL)
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

