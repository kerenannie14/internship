//
//  ViewController.swift
//  demo
//
//  Created by Ravi on 24/08/20.
//  Copyright © 2020 Ravi. All rights reserved.
//

import UIKit
//import QuartzCore

class ViewController: UIViewController {

    @IBOutlet weak var BaliView: UIView!
    
    @IBOutlet weak var baliImage: UIImageView!
    @IBOutlet weak var cappadociaImage: UIImageView!

    @IBOutlet weak var tokyoImage: UIImageView!
    
    
    
  override func viewDidLoad(){
        super.viewDidLoad()

        let tapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(viewTapped(tapGestureRecognizer:)))
        BaliView.isUserInteractionEnabled = true
        BaliView.addGestureRecognizer(tapGestureRecognizer)
    }

    @objc func viewTapped(tapGestureRecognizer: UITapGestureRecognizer)
    {
        _ = tapGestureRecognizer.view!

        let storyBoard = UIStoryboard(name: "Main", bundle:nil)
        let baliVC = storyBoard.instantiateViewController(withIdentifier: "BaliViewController") as! BaliViewController
        self.navigationController?.pushViewController(baliVC, animated:true)     }

}

