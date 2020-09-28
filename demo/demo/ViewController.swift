//
//  ViewController.swift
//  demo
//
//  Created by Ravi on 24/08/20.
//  Copyright © 2020 Ravi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
 
    @IBOutlet weak var enterNumberTextField: UITextField!
   
    @IBOutlet weak var enterNumberLabel: UILabel!
    
    @IBOutlet weak var enterDOBLabel: UILabel!
    
    @IBOutlet weak var enterDOBTextField: UITextField!
    
    @IBOutlet weak var enterOTPLabel: UILabel!
    
    @IBOutlet weak var enterOTPTextField: UITextField!
  
    @IBOutlet weak var nextBtn: UIButton!

    @IBAction func nextBtn(_ sender: Any) {
        
        let storyBoard = UIStoryboard(name: "Main", bundle:nil)
                let newVC = storyBoard.instantiateViewController(withIdentifier: "NewViewController") as! NewViewController
                self.navigationController?.pushViewController(newVC, animated:true)
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "First"

}
    
   
}

