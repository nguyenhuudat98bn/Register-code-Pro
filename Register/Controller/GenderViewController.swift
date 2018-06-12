//
//  GenderViewController.swift
//  Register
//
//  Created by nguyễn hữu đạt on 6/11/18.
//  Copyright © 2018 nguyễn hữu đạt. All rights reserved.
//

import UIKit

class GenderViewController: UIViewController {

    @IBOutlet var radioButtons: [UIButton]!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func selectedBtn(sender: UIButton) {
        radioButtons.forEach { $0.isSelected = false }
        sender.isSelected = true
        print(sender.currentTitle ?? "")
        UserDefaults.standard.set(sender.currentTitle, forKey: "Gender")
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
