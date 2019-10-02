//
//  TableViewModel.swift
//  DemoTDD
//
//  Created by itie.kone.dossongui on 10/1/19.
//  Copyright © 2019 itie.kone.dossongui. All rights reserved.
//

import Foundation



    class TableViewModel {
        
        init(from dispatcher : NetworkProtocolProtocol) {
            networkDispatcher = dispatcher
        }
        var networkDispatcher: NetworkProtocolProtocol!
     
        
    }

