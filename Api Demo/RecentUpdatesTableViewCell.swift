//
//  RecentUpdatesTableViewCell.swift
//  Api Demo
//
//  Created by Keren Annie on 18/09/20.
//  Copyright © 2020 Aparajitha. All rights reserved.
//

import UIKit

class RecentUpdatesTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var TVImageOutlet: UIImageView!
    
    @IBOutlet weak var UpdateLabelOutlet: UILabel!
    
    
    @IBOutlet weak var DeptLabelOutlet: UILabel!
    
    @IBOutlet weak var UpdateDateLabelOutlet: UILabel!
    
    

    override func awakeFromNib() {
        super.awakeFromNib()
        TVImageOutlet.layer.masksToBounds = true
        TVImageOutlet.layer.cornerRadius = TVImageOutlet.bounds.width / 2
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
