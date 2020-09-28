//
//  ProjectsCollectionViewCell.swift
//  Api Demo
//
//  Created by Keren Annie on 18/09/20.
//  Copyright © 2020 Aparajitha. All rights reserved.
//

import UIKit

class ProjectsCollectionViewCell: UICollectionViewCell {
    
    
    @IBOutlet weak var CollectionCellView: UIView!
    
    
    @IBOutlet weak var TitleLabelOutlet: UILabel!
    
    @IBOutlet weak var Photo1Outlet: UIImageView!
    
    
    @IBOutlet weak var Photo2Outlet: UIImageView!
    
    @IBOutlet weak var Photo3Outlet: UIImageView!
    
    
    @IBOutlet weak var FolderLabelOutlet: UILabel!
    
    
    @IBOutlet weak var TimerLabelOutlet: UILabel!
    
    
    @IBOutlet weak var CollectionCellImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        Photo1Outlet.layer.masksToBounds = true
        Photo1Outlet.layer.cornerRadius = Photo1Outlet.bounds.width / 2
        Photo2Outlet.layer.masksToBounds = true
        Photo2Outlet.layer.cornerRadius = Photo2Outlet.bounds.width / 2
        Photo3Outlet.layer.masksToBounds = true
        Photo3Outlet.layer.cornerRadius = Photo3Outlet.bounds.width / 2
        
    }

}
