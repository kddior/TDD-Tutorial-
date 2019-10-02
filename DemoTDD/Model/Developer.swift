//
//  Developer.swift
//  DemoTDD
//
//  Created by itie.kone.dossongui on 10/1/19.
//  Copyright © 2019 itie.kone.dossongui. All rights reserved.
//

import Foundation


struct Developer : Codable {
    var firstname: String
    var phonenumber:String
    
    enum CodingKeys: String, CodingKey {
        case firstname
        case phonenumber
    }
}
extension Developer {
    init(from dict : [String:Any]) {
       
        firstname = dict["firstname"] as? String ?? ""
        phonenumber = dict["phonenumber"] as? String ?? ""
    }
}
