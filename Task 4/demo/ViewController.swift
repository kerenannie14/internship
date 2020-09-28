//
//  ViewController.swift
//  demo
//
//  Created by Ravi on 24/08/20.
//  Copyright © 2020 Ravi. All rights reserved.
//

import UIKit



class ViewController: UIViewController {

    @IBOutlet weak var loginButton: UIButton!
    
    
    @IBAction func loginButton(_ sender: Any) {
        
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let newVC = storyboard.instantiateViewController(withIdentifier: "TabViewController") as! TabViewController
        self.navigationController?.pushViewController(newVC, animated:true)
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.isHidden = true
        navigationController?.navigationBar.barTintColor = UIColor(red: 45.0/255.0, green: 125.0/255.0, blue: 114.0/255.0, alpha: 1.0)
    }

}

