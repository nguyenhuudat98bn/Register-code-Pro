//
//  CustomButton.swift
//  Register
//
//  Created by nguyễn hữu đạt on 6/11/18.
//  Copyright © 2018 nguyễn hữu đạt. All rights reserved.
//

import UIKit

class CustomButton: UIViewController {
    @IBOutlet var radioButtons: [UIButton]!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    // MARK: - ACTION
    @IBAction func selectedBtn(sender: UIButton) {
        radioButtons.forEach { $0.isSelected = false }
        sender.isSelected = true
        print(sender.currentTitle ?? "")
       
    }
}


