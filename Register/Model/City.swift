//
//  City.swift
//  Register
//
//  Created by nguyễn hữu đạt on 6/7/18.
//  Copyright © 2018 nguyễn hữu đạt. All rights reserved.
//

import Foundation
typealias DICT = Dictionary<AnyHashable, Any>
class City {
    var cityCode : Int
    var name : String
    init?(dict: DICT) {
        guard let cityCode = dict["CityCode"] as? Int else { return nil }
        guard let name = dict["Name"] as? String else { return nil }
        self.cityCode = cityCode
        self.name = name
    }
}
