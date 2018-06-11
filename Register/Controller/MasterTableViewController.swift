//
//  MasterTableViewController.swift
//  Register
//
//  Created by nguyễn hữu đạt on 6/7/18.
//  Copyright © 2018 nguyễn hữu đạt. All rights reserved.
//

import UIKit

class MasterTableViewController: UITableViewController {
//    var people = [City]()
//    let endcodeData = NSKeyedArchiver.archivedData(withRootObject: pe)
    override func viewDidLoad() {
        super.viewDidLoad()
//        var people = [City]()
//            let endcodeData = NSKeyedArchiver.archivedData(withRootObject: people)


        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        DataService.shared.arr = []

        tableView.reloadData()
    }
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return DataService.shared.cities.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = DataService.shared.cities[indexPath.row].name
//        UserDefaults.standard.set(people, forKey: "people") = DataService.shared.cities[indexPath.row].name
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        DataService.shared.saveData["Cities"] = DataService.shared.cities[indexPath.row].name
        UserDefaults.standard.set(DataService.shared.cities[indexPath.row].name, forKey: "City")
        DataService.shared.filter(index: indexPath)
        print(DataService.shared.arr)
    }
}
