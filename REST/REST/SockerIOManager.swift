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
    
    /*
    
    func startSockets(){
        socket.on("connect") {data, ack in
            //print("socket connected")
            for index in 0..<mainInstance.active_transaction_uuids2.count {
                self.socket.on(mainInstance.active_transaction_uuids2[index].transactionUUID) {data, ack in
                    let json = JSON(data)
                    mainInstance.updateTransaction(json)
                }
                self.socket.emit("register_transaction", ["transaction_uuid": mainInstance.active_transaction_uuids2[index].transactionUUID])
            }
        }
        socket.connect()
    }
        
    
    
    func addTransaction(transaction:String) {
        self.socket.on(transaction) {data, ack in
            let json = JSON(data)
            mainInstance.updateTransaction(json)
        }
        self.socket.emit("register_transaction", ["transaction_uuid": transaction])
    }
    
    func stopSockets(){
        socket.disconnect()
    }
    */
}

var sockets = SocketIOManager()