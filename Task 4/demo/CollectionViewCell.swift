//
//  CollectionViewCell.swift
//  demo
//
//  Created by Keren Annie on 03/09/20.
//  Copyright © 2020 Ravi. All rights reserved.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {

    
    @IBOutlet weak var tutorImageOutlet: UIImageView!
    
    
    @IBOutlet weak var tutorNameOutlet: UILabel!
    
    
    @IBOutlet weak var tutorDescriptionOutlet: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}
