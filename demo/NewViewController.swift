//
//  NewViewController.swift
//  demo
//
//  Created by Keren Annie on 08/09/20.
//  Copyright © 2020 Ravi. All rights reserved.
//

import Foundation
import UIKit

class NewViewController: UIViewController
{
    @IBOutlet weak var NewTableView: UITableView!
    
        override func viewDidLoad() {
        super.viewDidLoad()
         registerTVCell()
        self.navigationController?.navigationBar.barTintColor = UIColor(red: 31.0/255.0, green: 31.0/255.0, blue: 40.0/255.0, alpha: 1.0)
        
}
let CellTV = "CellTV"
    
let exerciseNames = [["Hanging On The Bar", "Jumping Jacks"],["Pull Ups", "Archer Pull Ups", "High Plank"]]
let reps = [["50 sec","60 sec"],["20 reps","35 reps","45 sec"]]
    
    let header = ["Warm up - 2 sets", "Round 1 - 3 sets"]
    
override func viewWillAppear(_ animated: Bool) {
       // navigationController?.navigationBar.isHidden = true
    }
func registerTVCell()
    {
        
        let cellTV = UINib(nibName: "ScreenTwoTableViewCell", bundle: nil)
        self.NewTableView.register(cellTV, forCellReuseIdentifier: CellTV)
    }
    
}
extension NewViewController: UITableViewDataSource, UITableViewDelegate {
    
    
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let label = UILabel()
        label.text = header[section]
        label.textColor = UIColor.white
//        let separatorView = UIView(frame: CGRect(x: tableView.separatorInset.left, y: 0, width: 20, height: 1))
//        separatorView.backgroundColor = UIColor.red
//        separatorView.translatesAutoresizingMaskIntoConstraints  = false
        return label
        
       }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return exerciseNames[section].count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: CellTV, for: indexPath) as! ScreenTwoTableViewCell
        cell.ExerciseNameOutlet.text = exerciseNames[indexPath.section][indexPath.row]
        cell.ExerciseRepOutlet.text = reps[indexPath.section][indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: CellTV, for: indexPath) as! ScreenTwoTableViewCell
        cell.ExerciseNameOutlet.text = exerciseNames[indexPath.section][indexPath.row]
        cell.ExerciseRepOutlet.text = reps[indexPath.section][indexPath.row]
        cell.ExerciseNameOutlet.textColor = UIColor.green
        
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 50
    }
}

