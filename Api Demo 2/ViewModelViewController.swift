//
//  ViewModelViewController.swift
//  Api Demo
//
//  Created by Keren Annie on 15/09/20.
//  Copyright © 2020 Aparajitha. All rights reserved.
//

import UIKit
import Alamofire
import ObjectMapper

class ViewModelViewController {
    
    var tableViewDataReload:(()->())?
     var userObject: DataModel?

    
    func function()
            {
                UserService.sharedInstance.getUsers(completion: { response in
                         if let resp = Mapper<DataModel>().map(JSON: response.value as? [String: Any] ?? [:]) {
    //                         for data in resp.data ?? [UserDetail]() {
    //                            self.firstName.append(data.firstName ?? "")
    //                            print(self.firstName)
    //                            self.lastName.append(data.lastName ?? "")
    //                            print(self.lastName)
    //                         }
                            self.userObject = resp
                            self.tableViewDataReload?()
                    }

                         }, failure: {
                             print("no objects found")
                         })
        }

}

class UserService {
    typealias ResponseHandler = (AFDataResponse<Any>) -> Void
    typealias FailureHandler = () -> Void
    static let sharedInstance = UserService()
    var manager = Alamofire.Session()

    init() {
        self.manager = AF
    }

    func getUsers(completion:@escaping ResponseHandler, failure:@escaping FailureHandler) {
        let url: String = "https://reqres.in/api/users?page=2"

        self.manager.request(url).validate(statusCode: 200..<300).responseJSON { response in
            switch response.result {
            case .success:
                //to get JSON return value
                guard let responseJSON = response.value as? [String: AnyObject] else {
                    print("failed")
                    return
                }
                guard let _: DataModel = Mapper<DataModel>().map(JSONObject: responseJSON) else {
                    print("failed")
                    return
                }
                completion(response)
            case .failure( _):
                print("failed")
            }
        }
    }
}
