//
//  PickerViewController.swift
//  Register
//
//  Created by nguyễn hữu đạt on 6/8/18.
//  Copyright © 2018 nguyễn hữu đạt. All rights reserved.
//

import UIKit

class PickerViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    var array = [Int](18...100)
    
    var index: Int? {
        didSet {
            if index != nil {
                UserDefaults.standard.set(array[index!], forKey: "age")
            }
        }
    }
    
    @IBOutlet weak var dangKy: UIButton!
    
    @IBOutlet weak var pickerView: UIPickerView!
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return array.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return String(array[row])
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        pickerView.dataSource = self
        pickerView.delegate = self
        pickerView.selectRow(0, inComponent: 0, animated: true)
        
//        pickerView.numberOfComponents.addingReportingOverflow(18)
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        index = pickerView.selectedRow(inComponent: 0)
    }
    
//    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
//        DataService.shared.saveData["age"] = DataService.shared.arr[inde]
//    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func finishDangky(_ sender: UIButton) {
        
        
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        index = row
    }

}
