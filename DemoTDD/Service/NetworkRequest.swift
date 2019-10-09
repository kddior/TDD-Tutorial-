//
//  NetworkRequest.swift
//  DemoTDD
//
//  Created by itie.kone.dossongui on 10/1/19.
//  Copyright © 2019 itie.kone.dossongui. All rights reserved.
//

import Foundation

protocol NetworkProtocolProtocol {
    func fetchData(completion: ([Developer]?,_ error: String?)->())
}
class NetworkRequest: NetworkProtocolProtocol {
    
   
    
    func fetchData(completion: ([Developer]?, String?) -> ()) {
   guard let path = Bundle.main.path(forResource: "Developer", ofType: "json") else {
            completion(nil, "file is not present ")
            return
        }
        let data = try! Data(contentsOf: URL(fileURLWithPath: path))
        do {
            
            let developers = try JSONDecoder().decode([Developer].self, from: data)
            completion(developers,"no error")
        } catch {
            completion(nil,"error")
            
        }
        
       
    }
  
}
