//
//  ViewController.swift
//  Food Table
//
//  Created by MacStudent on 2019-10-29.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
   
    var foods: [String]?
    var healthyFoods : [String]?
    var unHealthyFoods : [String]?
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        foods = ["Apple", "Banana", "Burger", "Fries", "Orange", "Pizza"]
        healthyFoods = ["Apple", "Banana", "Orange"]
        unHealthyFoods = ["Burger", "Fries", "Pizza"]
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //guard foods != nil else { return 0}
        //return foods!.count
        
        guard healthyFoods != nil && unHealthyFoods != nil else {return 0}
        if section == 0 {
            return healthyFoods!.count
        }
        else {
            return unHealthyFoods!.count
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
     /*   guard foods != nil else { return UITableViewCell()}
        let cell = UITableViewCell(style: .default, reuseIdentifier: "")
        let foodName = foods![indexPath.row]
        cell.textLabel?.text = foods![indexPath.row]
        cell.imageView?.image = UIImage(named: foodName)
        return cell */
        guard healthyFoods != nil && unHealthyFoods != nil else {return UITableViewCell()}
        let cell = UITableViewCell(style: .default, reuseIdentifier: "")
        let foodName = (indexPath.section == 0) ? healthyFoods![indexPath.row] : unHealthyFoods![indexPath.row]
        cell.textLabel?.text = foodName
        cell.imageView?.image = UIImage(named: foodName)
        return cell
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }

}

