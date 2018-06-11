//
//  ViewController.swift
//  Register
//
//  Created by nguyễn hữu đạt on 6/7/18.
//  Copyright © 2018 nguyễn hữu đạt. All rights reserved.
//

import UIKit
// Dinh nghia ra mot kieu du lieu nguoi dung
typealias DICT = Dictionary<AnyHashable, Any>

class ViewController: UIViewController {

    var cities: [City] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        var data = DataService.shared.cities
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

