//
//  ViewController.swift
//  Api Demo
//
//  Created by Aparajitha on 9/9/20.
//  Copyright © 2020 Aparajitha. All rights reserved.
//

import UIKit


class ViewController: UIViewController {

    @IBOutlet weak var touchView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let tapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(viewTapped(tapGestureRecognizer:)))
             touchView.isUserInteractionEnabled = true
             touchView.addGestureRecognizer(tapGestureRecognizer)
        navigationController?.navigationBar.isHidden = true
    }
    
    
    @objc func viewTapped(tapGestureRecognizer: UITapGestureRecognizer)
    {
        _ = tapGestureRecognizer.view!

        let storyBoard = UIStoryboard(name: "Main", bundle:nil)
        let mainVC = storyBoard.instantiateViewController(withIdentifier: "TabViewViewController") as! TabViewViewController
        self.navigationController?.pushViewController(mainVC, animated:true)     }
}

