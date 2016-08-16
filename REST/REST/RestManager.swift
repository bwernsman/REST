//
//  RestManager.swift
//  REST
//
//  Created by Ben Wernsman on 8/15/16.
//  Copyright © 2016 BenWernsman. All rights reserved.
//

import Foundation
import SwiftyJSON
import Alamofire

class RestManager: NSObject {
    
    func getToken(callback: (Bool) -> ()){
        self.apiCall("token") { (response) in
            print("The response is")
            print(response)
            return callback(response)
        }
    }
    
    func apiCall(idToken:String,callback: (Bool) -> ()){
        let testParams:[String: String] = ["idToken":idToken]
        Alamofire.request(.POST, "http://localhost:8080/auth",parameters: testParams,encoding: .JSON)
            .responseJSON { response in
                print(response)
                let json = JSON(data: response.data!)
                if(json == nil){
                    return callback(false)
                }
                return callback(true)
        }
    }
    
}



var rest = RestManager()