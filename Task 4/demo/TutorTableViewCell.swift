//
//  TutorTableViewCell.swift
//  demo
//
//  Created by Keren Annie on 03/09/20.
//  Copyright © 2020 Ravi. All rights reserved.
//

import UIKit

class TutorTableViewCell: UITableViewCell {

    @IBOutlet weak var tutorLabel: UITextField!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
