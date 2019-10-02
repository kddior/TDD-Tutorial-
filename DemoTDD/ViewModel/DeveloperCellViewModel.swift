//
//  CellViewModel.swift
//  DemoTDD
//
//  Created by itie.kone.dossongui on 10/1/19.
//  Copyright © 2019 itie.kone.dossongui. All rights reserved.
//

import Foundation


struct DeveloperCellViewModel : Equatable {
    var name: String
    var phone: String
}
extension DeveloperCellViewModel {
    init(from model: Developer) {
        name = model.firstname
        phone = model.phonenumber
    }
}
