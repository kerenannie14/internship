//
//  ViewController.swift
//  demo
//
//  Created by Ravi on 24/08/20.
//  Copyright © 2020 Ravi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var DrinksImageView: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let tapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(imageTapped(tapGestureRecognizer:)))
             DrinksImageView.isUserInteractionEnabled = true
             DrinksImageView.addGestureRecognizer(tapGestureRecognizer)
         }

         @objc func imageTapped(tapGestureRecognizer: UITapGestureRecognizer)
         {
            _ = tapGestureRecognizer.view as! UIImageView

             let storyBoard = UIStoryboard(name: "Main", bundle:nil)
             let NewVC = storyBoard.instantiateViewController(withIdentifier: "NewViewController") as! NewViewController
            
             self.navigationController?.pushViewController(NewVC, animated:true)     }

        }
   

