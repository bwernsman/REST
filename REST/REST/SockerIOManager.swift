//
//  SockerIOManager.swift
//  REST
//
//  Created by Ben Wernsman on 8/15/16.
//  Copyright © 2016 BenWernsman. All rights reserved.
//

import Foundation
import SocketIOClientSwift
import SwiftyJSON

class SocketIOManager{
    var socket = SocketIOClient(socketURL: NSURL(string: info.socketURL)!,
                                options:[
                                    .Log(true),
                                    .ForcePolling(true),
                                    .ForceNew(true)
        ])
    
   
    
    func startSockets(){
        socket.on("connect") {data, ack in
            print("socket connected")
            self.socket.on("name_here") {data, ack in
                //Do Stuff in here
                let json = JSON(data)
                print(json)
            }
            self.socket.emit("register_transaction", ["transaction_uuid": "name_here"])
        }
        socket.connect()
    }
    
    //Add another listener to socketIO
    
    /*
    func addTransaction(transaction:String) {
        self.socket.on(transaction) {data, ack in
            let json = JSON(data)
            mainInstance.updateTransaction(json)
        }
        self.socket.emit("register_transaction", ["transaction_uuid": transaction])
    }
    */
    
    func stopSockets(){
        socket.disconnect()
    }
 
}

var sockets = SocketIOManager()
