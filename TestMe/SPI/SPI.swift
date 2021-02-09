//
//  SPI.swift
//  TestMe
//
//  Created by aki.yu on 2018/10/8.
//  Copyright © 2018 aki.yu. All rights reserved.
//

import UIKit

class SPI {

    #if DEBUG
        let spi_url = "http://localhost:3000"
    #else
        let spi_url = "https://real.server.url"
    #endif
 
    var defaultSession : URLSession = URLSession.shared
    
    func login(acc:String,pass:String, completion: @escaping (Bool?)-> Void ) {
        
        sleep(3)
        
        if acc == "aki" && pass == "qaz" {
            completion(true)
        } else {
            completion(false)
        }
    }
}
