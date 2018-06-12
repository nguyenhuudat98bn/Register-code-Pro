//
//  FinishRegisterViewController.swift
//  Register
//
//  Created by nguyễn hữu đạt on 6/11/18.
//  Copyright © 2018 nguyễn hữu đạt. All rights reserved.
//

import UIKit

class FinishRegisterViewController: UIViewController {

    @IBOutlet weak var ageText: UITextField!
    @IBOutlet weak var disTrictext: UITextField!
    @IBOutlet weak var cityText: UITextField!
    @IBOutlet weak var genDertex : UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        if let nameUser = UserDefaults.standard.object(forKey: "City") as? String{
            cityText.text = nameUser
        }
        if let nameDistric = UserDefaults.standard.object(forKey: "District") as? String{
            disTrictext.text = nameDistric
        }
        if let ageUser = UserDefaults.standard.object(forKey: "age") as? Int{
            ageText.text = String(ageUser)
        }
        if let gender = UserDefaults.standard.object(forKey: "Gender") as? String{
            genDertex.text = gender
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
