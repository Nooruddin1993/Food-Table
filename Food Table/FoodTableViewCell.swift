//
//  FoodTableViewCell.swift
//  Food Table
//
//  Created by MacStudent on 2019-10-30.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import UIKit

class FoodTableViewCell: UITableViewCell {

    var nameLabel: UILabel?
    var caloriesLabel: UILabel?
    var iconFoodImage: UIImage?
    
    func setName(name: String, calories: Int, image: String) {
        nameLabel = UILabel(frame: CGRect(x: 10, y: 15, width: 140, height: 40))
        nameLabel?.text = name
        
        caloriesLabel = UILabel(frame: CGRect(x: 160, y: 15, width: 140, height: 40))
        caloriesLabel?.text = "\(calories) cals"
    }
}
