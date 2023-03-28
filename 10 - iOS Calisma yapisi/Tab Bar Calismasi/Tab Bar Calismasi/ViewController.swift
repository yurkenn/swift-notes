//
//  ViewController.swift
//  Tab Bar Calismasi
//
//  Created by Oğuz Yürken on 26.03.2023.
//

import UIKit

class ViewController: UIViewController {
    
    var profileCounter = 0
    var workCounter = 0

    override func viewDidLoad() {
        super.viewDidLoad()
       
    }
    @IBAction func profileButton(_ sender: Any) {
        if let tabItems = tabBarController?.tabBar.items{
            let profileTabBarItem = tabItems[0]
            
            profileCounter += 1
            
            profileTabBarItem.badgeColor = UIColor.purple
            profileTabBarItem.badgeValue = String(profileCounter)
        }
    }
    
    @IBAction func workButton(_ sender: Any) {
        if let tabItems = tabBarController?.tabBar.items{
            let workTabBarItem = tabItems[1]
            
            workTabBarItem.badgeColor = UIColor.black
            workCounter += 1
            workTabBarItem.badgeValue = String(workCounter)
        }
    }
    
}

