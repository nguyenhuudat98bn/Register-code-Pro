//
//  ViewController.swift
//  Register
//
//  Created by nguyễn hữu đạt on 6/8/18.
//  Copyright © 2018 nguyễn hữu đạt. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button3: UIButton!
    @IBOutlet weak var button2: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        button1.setBackgroundImage(#imageLiteral(resourceName: "mama"), for: .normal)
        button2.setBackgroundImage(#imageLiteral(resourceName: "mama"), for: .normal)
        button3.setBackgroundImage(#imageLiteral(resourceName: "mama"), for: .normal)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func buttonhehe(_ sender: UIButton) {
//        button1.backgroundColor = UIColor.red
//        button2.backgroundColor = UIColor.green
//        button3.backgroundColor = UIColor.green
        button1.setBackgroundImage(#imageLiteral(resourceName: "mimi"), for: .normal)
        button2.setBackgroundImage(#imageLiteral(resourceName: "mama"), for: .normal)
        button3.setBackgroundImage(#imageLiteral(resourceName: "mama"), for: .normal)
        
    }
    

    @IBAction func buttonhihi(_ sender: UIButton) {
//        button2.backgroundColor = UIColor.red
//        button1.backgroundColor = UIColor.green
//        button3.backgroundColor = UIColor.green
        button2.setBackgroundImage(#imageLiteral(resourceName: "mimi"), for: .normal)
        button1.setBackgroundImage(#imageLiteral(resourceName: "mama"), for: .normal)
        button3.setBackgroundImage(#imageLiteral(resourceName: "mama"), for: .normal)
        
    }
    @IBAction func huttonhuhu(_ sender: UIButton) {
//        button3.backgroundColor = UIColor.red
//        button2.backgroundColor = UIColor.green
//        button1.backgroundColor = UIColor.green
        button3.setBackgroundImage(#imageLiteral(resourceName: "mimi"), for: .normal)
        button1.setBackgroundImage(#imageLiteral(resourceName: "mama"), for: .normal)
        button2.setBackgroundImage(#imageLiteral(resourceName: "mama"), for: .normal)
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
