//
//  ExerciseListTableViewCell.swift
//  demo
//
//  Created by Keren Annie on 07/09/20.
//  Copyright © 2020 Ravi. All rights reserved.
//

import UIKit

class ExerciseListTableViewCell: UITableViewCell {

    @IBOutlet weak var programLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
