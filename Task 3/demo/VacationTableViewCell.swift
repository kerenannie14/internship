//
//  VacationTableViewCell.swift
//  demo
//
//  Created by Keren Annie on 30/08/20.
//  Copyright © 2020 Ravi. All rights reserved.
//

import UIKit

class VacationTableViewCell: UITableViewCell {

  
    
    @IBOutlet weak var VacationImage: UIImageView!
    
    @IBOutlet weak var VacationLabel: UILabel!
    
    @IBOutlet weak var VacationRating: UIImageView!
    
    @IBOutlet weak var VacationDescription: UITextView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}


