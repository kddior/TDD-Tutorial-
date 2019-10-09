//
//  DeveloperCell.swift
//  DemoTDD
//
//  Created by itie.kone.dossongui on 10/8/19.
//  Copyright © 2019 itie.kone.dossongui. All rights reserved.
//

import UIKit

class DeveloperCell: UITableViewCell {

      @IBOutlet weak var name :UILabel!
        @IBOutlet weak var phone: UILabel!
        
        
        override func awakeFromNib() {
            super.awakeFromNib()
            // Initialization code
        }

        func configureCell(from model:DeveloperCellViewModel ){
            self.name.text = model.name
            self.phone.text = model.phone
        }

    }
