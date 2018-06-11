//
//  Districts.swift
//  Register
//
//  Created by nguyễn hữu đạt on 6/7/18.
//  Copyright © 2018 nguyễn hữu đạt. All rights reserved.
//

import Foundation
class Districts {
    var cityCode : Int
    var districts : Int
    var name : String
    init?(dict: DICT) {
        guard let cityCode = dict["CityCode"] as? Int else { return nil }
        guard let districts = dict["DistrictCode"] as? Int else { return nil }
        guard let name = dict["Name"] as? String else { return nil }
        self.cityCode = cityCode
        self.districts = districts
        self.name = name
    }
    
}
