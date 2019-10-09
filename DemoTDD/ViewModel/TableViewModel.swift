//
//  TableViewModel.swift
//  DemoTDD
//
//  Created by itie.kone.dossongui on 10/1/19.
//  Copyright © 2019 itie.kone.dossongui. All rights reserved.
//

import Foundation



    class TableViewModel {
        
      var networkDispatcher: NetworkProtocolProtocol!
             var numberofrow: Int = 0
             var cellArray = [DeveloperCellViewModel]()
             var tableViewFirstload : () -> () = {}
             
                 init(from dispatcher : NetworkProtocolProtocol) {
                   
                     networkDispatcher = dispatcher
                     tableViewFirstload = { [weak self ]  in
                         self?.fetch()
                     }
                 }

             var developers :[Developer]!  {
                 didSet {
                      configureNumberofrow()
                      setupCellArray()
                 }
             }
         }
         extension TableViewModel{
            
             private func fetch() {
                 self.networkDispatcher.fetchData { [weak self] (developerlist, errorMessage) in
                     guard let _developers = developerlist else {
                         //display error
                         return
                     }
                     self?.developers = _developers
                 }
             }
             
             func configureNumberofrow(){
                 self.numberofrow = cellArray.count
             }
             
             func setupCellArray() {
                 for dev in developers {
                     cellArray.append(DeveloperCellViewModel(from: dev))
                 }
             }
             
             func cellAtIndexPAth(_ indexPath:IndexPath) -> DeveloperCellViewModel {
                 return cellArray[indexPath.row]
              }
        
    }

