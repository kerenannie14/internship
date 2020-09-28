//
//  DataModel.swift
//  Api Demo
//
//  Created by Aparajitha on 9/9/20.
//  Copyright © 2020 Aparajitha. All rights reserved.
//

import Foundation
import ObjectMapper

class DataModel: Mappable {
    var page: Int?
    var perPage: Int?
    var total: Int?
    var totalPages: Int?
    var data: [UserDetail]?

    required init?(map: Map) {}

    func mapping(map: Map) {
        page <- map["page"]
        perPage <- map["per_page"]
        total <- map["total"]
        totalPages <- map["total_pages"]
        data <- map["data"]
    }
}
