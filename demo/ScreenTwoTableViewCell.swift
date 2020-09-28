//
//  ScreenTwoTableViewCell.swift
//  demo
//
//  Created by Keren Annie on 08/09/20.
//  Copyright © 2020 Ravi. All rights reserved.
//

import UIKit

class ScreenTwoTableViewCell: UITableViewCell {
    
    
    
    @IBOutlet weak var ExerciseImageOutlet: UIImageView!
    
    @IBOutlet weak var ExerciseNameOutlet: UILabel!
    
    @IBOutlet weak var ExerciseRepOutlet: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
