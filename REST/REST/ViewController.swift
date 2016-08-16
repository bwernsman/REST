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
        
        //Config
        config.getConfig()
        print(info.restURL)
        
        //Start Socket IO
        sockets.startSockets()
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

