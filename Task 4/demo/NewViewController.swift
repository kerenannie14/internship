//
//  NewViewController.swift
//  demo
//
//  Created by Keren Annie on 03/09/20.
//  Copyright © 2020 Ravi. All rights reserved.
//

import Foundation
import UIKit

class NewViewController: UIViewController {
    
    
    @IBOutlet weak var findTutorTableView: UITableView!
    
    
    @IBOutlet weak var findTutorButton: UIButton!
    
    var placeholders = ["Please enter subject", "Please select class", "Enter university", "Please select location"]
    
    let tableViewIdentifier = "cell"
    
    
    @IBAction func findTutorButton(_ sender: Any) {
        
        
       let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        let thirdVC = storyboard.instantiateViewController(withIdentifier: "ThirdViewController") as! ThirdViewController
        
        self.navigationController?.pushViewController(thirdVC, animated: true)
        
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        registerCell()
        navigationController?.navigationBar.isHidden = true
        
    }
    
    
    func registerCell() {
        let cell1 = UINib(nibName: "TutorTableViewCell", bundle: nil)
        self.findTutorTableView.register(cell1, forCellReuseIdentifier: tableViewIdentifier)
    }
    
}
extension NewViewController: UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return placeholders.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: tableViewIdentifier, for: indexPath) as! TutorTableViewCell
        
        cell.tutorLabel.placeholder = placeholders[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 65
    }
    
    
    

}
