//
//  UserService.swift
//  Api Demo
//
//  Created by Aparajitha on 9/9/20.
//  Copyright © 2020 Aparajitha. All rights reserved.
//

//import Foundation
//import Alamofire
//import ObjectMapper
//
//class UserService {
//    
//    static let shared = UserService()
//    private var manager: Session
//    
//    private init() {
//        self.manager = Alamofire.Session.default
//    }
//    
//    func getUsers(completion:@escaping (Array<DataModel>) -> Void, failure:@escaping (Int, String) -> Void) -> Void{
//        let url: String = "https://reqres.in/api/users?page=2"
//         
//        self.manager.request(url).validate(statusCode: 200..<300).responseJSON { response in
//            switch response.result {
//            case .success:
//                //to get JSON return value
////                guard let responseJSON = response.result as? Array<[String: AnyObject]> else {
////                    failure(0,"Error reading response")
////                    return
////                }
//                guard let responseJSON = response.result as? [String: AnyObject] else {
//                    failure(0,"Error reading response")
//                    return
//                }
//                let customer = Mapper<DataModel>().map(JSONObject: responseJSON)
////                guard let customers:[DataModel] = Mapper<DataModel>().mapArray(JSONArray: responseJSON) else {
////                    failure(0,"Error mapping response")
////                    return
////                }
//               
//                completion(customer)
//            case .failure(let error):
//                failure(0,"Error \(error)")
//            }
//        }
//    }
//}
