//
//  ViewController.swift
//  Api Demo
//
//  Created by Aparajitha on 9/9/20.
//  Copyright © 2020 Aparajitha. All rights reserved.
//

import UIKit
import ObjectMapper
import Alamofire

class ViewController: UIViewController {
    
    
    @IBOutlet weak var CVOutlet: UICollectionView!
    
    
    @IBOutlet weak var TVOutlet: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        registerCVCell()
        registerTVCell()
        
    }
    
    //Variables for Collection View
    
    let resuableCVIdentifier = "cell"
   
    let imagesCV1 = [UIImage (named: "Photo1"), UIImage (named: "Photo2")]
                    
    let imagesCV2 = [UIImage (named: "Photo3"), UIImage (named: "Photo4")]
    
    let imagesCV3 = [UIImage (named: "Photo5"), UIImage (named: "Photo6")]
    
   let girlImageCV = [UIImage (named: "girl1"), UIImage (named: "girl2")]
    
    let titleLabelCV = ["Visual Book Illo", "Brand Guide Book"]
    
    let folderLabelCV = ["98 sketches","25 Pages"]
    
    let timerLabelCV = ["12 Days Remaining","12 Days Remaining"]
    

    
    //Variables for Table View
    let resuableTVIdentifier = "TVcell"
    
    let profileImage = [UIImage (named: "Photo5"), UIImage (named: "Photo6")]
    let profileName = ["Minnie Weaver uploaded 3 files", "Michael Jackamn edited Raduit brief"]
    let deptName = ["Project City Branding", "Project Product Design"]
    let updateDate = ["Sept 1, 2020", "Sept 1, 2020"]
    
    func registerCVCell() {
        let regCell = UINib(nibName: "ProjectsCollectionViewCell", bundle: nil)
        self.CVOutlet.register(regCell, forCellWithReuseIdentifier: resuableCVIdentifier)
    }
    
    func registerTVCell() {
        let regCell = UINib(nibName: "RecentUpdatesTableViewCell", bundle: nil)
        self.TVOutlet.register(regCell, forCellReuseIdentifier: resuableTVIdentifier)
        
    }
    
    
}

extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return titleLabelCV.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell1 = collectionView.dequeueReusableCell(withReuseIdentifier: resuableCVIdentifier, for: indexPath) as! ProjectsCollectionViewCell
        cell1.TitleLabelOutlet.text = titleLabelCV[indexPath.row]
        cell1.FolderLabelOutlet.text = folderLabelCV[indexPath.row]
        cell1.TimerLabelOutlet.text = timerLabelCV[indexPath.row]
        cell1.Photo1Outlet.image = imagesCV1[indexPath.row]
        cell1.Photo2Outlet.image = imagesCV2[indexPath.row]
        cell1.Photo3Outlet.image = imagesCV3[indexPath.row]
        cell1.CollectionCellImage.image = girlImageCV[indexPath.row]
        
        return cell1
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
    return CGSize(width: 250 , height: 160)
    }
    
      func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
          return 20
      }
    
    
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return profileName.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell1 = tableView.dequeueReusableCell(withIdentifier: resuableTVIdentifier, for: indexPath) as! RecentUpdatesTableViewCell

        cell1.TVImageOutlet.image = profileImage[indexPath.row]
        cell1.UpdateLabelOutlet.text = profileName[indexPath.row]
        cell1.DeptLabelOutlet.text = deptName[indexPath.row]
        cell1.UpdateDateLabelOutlet.text = updateDate[indexPath.row]
        
        return cell1
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
            return 150
    }
    
   
    }
    





















//struct User: Codable {
//    var page: Int?
//    var per_page: Int?
//    var total: Int?
//    var total_pages: Int?
//    struct data1: Codable {
//        var id: Int?
//        var first_name: String?
//        var last_name: String?
//    }
//    var data: [data1]?
//}
//
//class ViewController: UIViewController {
  //  @IBOutlet weak var tableView: UITableView!

//    var users: User?
//    let url = URL(string: "https://reqres.in/api/users?page=2")!

//    override func viewDidLoad() {
//        super.viewDidLoad()
//        // Do any additional setup after loading the view.
//        apiCall()
//        registerTableViewCell()
//        tableView.reloadData()
//    }
//
//    func registerTableViewCell() {
//        let cell1 = UINib(nibName: "TableViewCell", bundle: nil)
//        self.tableView.register(cell1, forCellReuseIdentifier: "cell")
//    }
//
//    func apiCall() {
//        AF.request(url).responseJSON { response in
//            let json = response.data
//            do {
//                let decoder = JSONDecoder()
//                self.users = try decoder.decode(User.self, from: json!)
//
//                print(self.users?.page as Any)
//                print(self.users?.per_page as Any)
//                print(self.users?.total as Any)
//                print(self.users?.total_pages as Any)
//                print(self.users?.data?[0].first_name ?? "any name")
//                print(self.users?.data?.count ?? 0)
//
//            } catch let err {
//                print(err)
//            }
//        }
//    }
////
//}
//
//extension ViewController: UITableViewDataSource, UITableViewDelegate {
//
//    func numberOfSections(in tableView: UITableView) -> Int {
//        return 1
//    }
//
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return 6
//    }
//
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCell
//        cell.label1.text = String(users?.data?[indexPath.row].id ?? 0)
//        cell.label2.text = users?.data?[indexPath.row].first_name ?? ""
//        cell.label3.text = users?.data?[indexPath.row].last_name ?? ""
//        cell.label4.text = String(users?.page ?? 0)
//        return cell
//    }
//
//    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
//        return 200
//    }
//}

//
//class UserService {
//    typealias ResponseHandler = (AFDataResponse<Any>) -> Void
//    typealias FailureHandler = () -> Void
//    static let sharedInstance = UserService()
//    var manager = Alamofire.Session()
//
//    init() {
//        self.manager = AF
//    }
//
//    func getUsers(completion:@escaping ResponseHandler, failure:@escaping FailureHandler) {
//        let url: String = "https://reqres.in/api/users?page=2"
//
//        self.manager.request(url).validate(statusCode: 200..<300).responseJSON { response in
//            switch response.result {
//            case .success:
//                //to get JSON return value
//                guard let responseJSON = response.value as? [String: AnyObject] else {
//                    print("failed")
//                    return
//                }
//                guard let _: DataModel = Mapper<DataModel>().map(JSONObject: responseJSON) else {
//                    print("failed")
//                    return
//                }
//                completion(response)
//            case .failure( _):
//                print("failed")
//            }
//        }
//    }
//}
//
//class ViewController: UIViewController {
////    var man = UserService()
//    @IBOutlet weak var tableView: UITableView!
//    var userObject: DataModel?
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        serviceCall()
//        registerTableViewCell()
//    }
//
//    func registerTableViewCell() {
//        let cell1 = UINib(nibName: "TableViewCell", bundle: nil)
//        self.tableView.register(cell1, forCellReuseIdentifier: "cell")
//    }
//
//    func serviceCall() {
//        UserService.sharedInstance.getUsers(completion: { response in
//            if let resp = Mapper<DataModel>().map(JSON: response.value as? [String: Any] ?? [:]) {
//                print(resp.page ?? 0)
//                print(resp.perPage ?? 0)
//                print(resp.total ?? 0)
//                print(resp.totalPages ?? 0)
//                for data in resp.data ?? [UserDetail]() {
//                    print("id: ", data.id ?? 0)
//                    print("first name: ", data.firstName ?? "")
//                    print("last name: ", data.lastName ?? "")
//                    print("image: ", data.image ?? "")
//                    print("\n")
//                }
//            }
//        }, failure: {
//            print("no objects found")
//        })
//    }
//}
//
//extension ViewController: UITableViewDelegate, UITableViewDataSource {
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return 1
//    }
//
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCell
//        return cell
//    }
//
//    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
//        return 200
//    }
//}





