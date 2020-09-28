//
//  DemoTableViewController.swift
//  demo
//
//  Created by Keren Annie on 28/08/20.
//  Copyright © 2020 Ravi. All rights reserved.
//

import UIKit

class DemoTableViewController: UIViewController {

    @IBOutlet weak var DemoTableView: UITableView!
    
    let resuseIdentifier = "cell"
    var labelText = ["Human resources", "marketting", "operations"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        registerTableViewCell()
        }
    
    
          func registerTableViewCell() {
              let cell1 = UINib(nibName: "DemoTableViewCell", bundle: nil)
              self.DemoTableView.register(cell1, forCellReuseIdentifier: resuseIdentifier)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
extension DemoTableViewController: UITableViewDataSource, UITableViewDelegate {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return labelText.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: resuseIdentifier, for: indexPath) as! DemoTableViewCell
        
        cell.DemoLabel.text = labelText[indexPath.row]
        return cell
}
}
