//
//  ThirdViewController.swift
//  demo
//
//  Created by Keren Annie on 03/09/20.
//  Copyright © 2020 Ravi. All rights reserved.
//

import Foundation
import UIKit

class ThirdViewController: UIViewController {
    
    
    
    @IBOutlet weak var tutorCollectionView: UICollectionView!
    
    
    var tutorName = ["Zoe Martin", "Vince Fleming", "Javier Sierra","Zoe Martin", "Vince Fleming", "Javier Sierra"]
    var tutorImage = [ UIImage (named : "Photo1"),UIImage (named : "Photo2"),UIImage (named : "Photo3"),UIImage (named : "Photo4"),UIImage (named : "Photo5"),UIImage (named : "Photo6")]
    var tutorDescription = ["Science, Mathematics","English, Mathematics", "Science, English", "Science, Mathematics","English, Mathematics", "Science, English"]
    
    var collectionViewIdentifier = "collectionCell"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        registerCell2()
        navigationController?.navigationBar.isHidden = false
        navigationController?.navigationBar.barTintColor = UIColor(red: 45.0/255.0, green: 125.0/255.0, blue: 114.0/255.0, alpha: 1.0)
    }
    
    
    func registerCell2() {
            let cell2 = UINib(nibName: "CollectionViewCell", bundle: nil)
            self.tutorCollectionView.register(cell2, forCellWithReuseIdentifier: collectionViewIdentifier)
        }
        
    }


extension ThirdViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return tutorImage.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell3 = collectionView.dequeueReusableCell(withReuseIdentifier: collectionViewIdentifier, for: indexPath) as! CollectionViewCell
        
        cell3.tutorImageOutlet.image = tutorImage[indexPath.row]
        cell3.tutorNameOutlet.text = tutorName[indexPath.row]
        cell3.tutorDescriptionOutlet.text = tutorDescription[indexPath.row]
        return cell3
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: UIScreen.main.bounds.width - 40, height: 110)
    }
    
   

}
        
    




//NavigationController.nagivationbar.bartintcolor
