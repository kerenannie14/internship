//
//  DemoTableViewCell.swift
//  demo
//
//  Created by Keren Annie on 28/08/20.
//  Copyright © 2020 Ravi. All rights reserved.
//

import UIKit

class DemoTableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    
    @IBOutlet weak var DemoLabel: UILabel!
    

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
