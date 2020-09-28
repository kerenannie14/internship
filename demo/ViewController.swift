//
//  ViewController.swift
//  demo
//
//  Created by Ravi on 24/08/20.
//  Copyright © 2020 Ravi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var ExerciseCollectionView: UICollectionView!
    
    @IBOutlet weak var ExerciseTableView: UITableView!
    
    let resuableCellCV = "CVcell"
    let resuableCellTV = "TVcell"
    
    let programNames = ["Chest & Triceps", "Whole Body Skill up", "Shoulders", "ABS", "Back & Biceps", "Upper Body", "Lower Body", "Cardio"]
    let programImage = [UIImage(named : "gym"), UIImage(named : "skipping"), UIImage(named : "swim"), UIImage(named : "bike")]
    
//    let attrs = [
//        NSAttributedString.Key.foregroundColor: UIColor.red,
//        NSAttributedString.Key.font: UIFont(name: "Arial-Bold", size: 30)
//    ]

   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        registerCVCell()
        registerTVCell()
        self.navigationController?.navigationBar.barTintColor = UIColor(red: 31.0/255.0, green: 31.0/255.0, blue: 40.0/255.0, alpha: 1.0)
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.navigationBar.isHidden = false
        
    }
    
    func registerCVCell()
    {
        let cellCV = UINib(nibName: "ExerciseListCollectionViewCell", bundle: nil)
        self.ExerciseCollectionView.register(cellCV, forCellWithReuseIdentifier: resuableCellCV)
    }
    
    func registerTVCell()
    {
        
        let cellTV = UINib(nibName: "ExerciseListTableViewCell", bundle: nil)
        self.ExerciseTableView.register(cellTV, forCellReuseIdentifier: resuableCellTV)
    }

    }


extension ViewController: UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    public func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return programImage.count
    }
    
    
    public func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell1 = collectionView.dequeueReusableCell(withReuseIdentifier: resuableCellCV, for: indexPath) as! ExerciseListCollectionViewCell
            cell1.programImageView.image = programImage[indexPath.row]
          return cell1
        
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 90 , height: 90)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 20
    }
    
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let cell3 = collectionView.dequeueReusableCell(withReuseIdentifier: resuableCellCV, for: indexPath) as! ExerciseListCollectionViewCell
        cell3.programImageView.backgroundColor = UIColor.green
        
    }
    
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return programNames.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
          let cell2 = tableView.dequeueReusableCell(withIdentifier: resuableCellTV, for: indexPath) as! ExerciseListTableViewCell
              cell2.programLabel.text = programNames[indexPath.row]
              return cell2
    }
    
 func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
   
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let storyBoard = UIStoryboard(name: "Main", bundle:nil)
        let newVC = storyBoard.instantiateViewController(withIdentifier: "NewViewController") as! NewViewController
        self.navigationController?.pushViewController(newVC, animated:true)
        
    }
    
    
    
    
}


