//
//  NewViewController.swift
//  demo
//
//  Created by Keren Annie on 25/08/20.
//  Copyright © 2020 Ravi. All rights reserved.
//

import Foundation
import UIKit

class NewViewController: UIViewController {
    @IBOutlet weak var flowerImage: UIImageView!
    
    @IBOutlet var FlowerTapGesture: UITapGestureRecognizer!
    
    @IBOutlet weak var Label: UILabel!
    
    
    var LabelText = String()
    
    
    override func viewDidLoad(){
         super.viewDidLoad()

         let tapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(imageTapped(tapGestureRecognizer:)))
         flowerImage.isUserInteractionEnabled = true
         flowerImage.addGestureRecognizer(tapGestureRecognizer)
     }

     @objc func imageTapped(tapGestureRecognizer: UITapGestureRecognizer)
     {
        _ = tapGestureRecognizer.view as! UIImageView

         let storyBoard = UIStoryboard(name: "Main", bundle:nil)
         let flowerVC = storyBoard.instantiateViewController(withIdentifier: "FlowerViewController") as! FlowerViewController
        flowerVC.flower = "Welcome"
         self.navigationController?.pushViewController(flowerVC, animated:true)     }

    }

