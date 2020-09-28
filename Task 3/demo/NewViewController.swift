//
//  NewViewController.swift
//  demo
//
//  Created by Keren Annie on 30/08/20.
//  Copyright © 2020 Ravi. All rights reserved.
//

import Foundation
import UIKit

class NewViewController: UIViewController {
   
    @IBOutlet weak var newTableView: UITableView!
    
      let tableViewIdentifier = "cell"
      var vacationLabelText = ["Bali","Cappadocia","Tokyo","Paris"]
    var image = [UIImage (named : "rsz_bali"), UIImage(named : "Cappadocia"), UIImage(named : "Tokyo"), UIImage(named : "Tokyo")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        registerTableViewCell()
    }
    
    func registerTableViewCell() {
                let cell1 = UINib(nibName: "VacationTableViewCell", bundle: nil)
                self.newTableView.register(cell1, forCellReuseIdentifier: tableViewIdentifier)
    
}
}
extension NewViewController: UITableViewDataSource, UITableViewDelegate {
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return vacationLabelText.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: tableViewIdentifier, for: indexPath) as! VacationTableViewCell
        
        cell.VacationLabel.text = vacationLabelText[indexPath.row]
        cell.VacationImage.image = image[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 140
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.row == 0 {
        let storyBoard = UIStoryboard(name: "Main", bundle:nil)
        let newVC = storyBoard.instantiateViewController(withIdentifier: "BaliViewController") as! BaliViewController
        self.navigationController?.pushViewController(newVC, animated:true)
    }
    }
        
        }
    

 
        


