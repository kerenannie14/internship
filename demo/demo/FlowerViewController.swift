//
//  FlowerViewController.swift
//  demo
//
//  Created by Keren Annie on 26/08/20.
//  Copyright © 2020 Ravi. All rights reserved.
//

import Foundation
import UIKit

class FlowerViewController: UIViewController {
    
    @IBOutlet weak var WelcomeLabel: UILabel!
    
    @IBOutlet weak var SecondView: UIView!
    
    @IBOutlet weak var Label2: UILabel!
    
    var flower:String = ""
    
    override func viewDidLoad(){
            super.viewDidLoad()
        
        //SecondView.isHidden = true
        Label2.text = flower
        
}
}
