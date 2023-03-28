//
//  ProfileVC.swift
//  tabBar ve navation birlikte kullanimi
//
//  Created by Oğuz Yürken on 28.03.2023.
//

import UIKit

class ProfileVC: UIViewController {

    var profileCounter = 0
    var workCounter = 0
    
    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func profileButton(_ sender: Any) {
        if let tabItems = tabBarController?.tabBar.items {
            let item = tabItems[1]
            profileCounter += 1
            
            item.badgeValue = String(profileCounter)
        }
    }
    
    @IBAction func workButton(_ sender: Any) {
        if let tabItem = tabBarController?.tabBar.items{
            let item = tabItem[0]
            
            workCounter += 1
            
            item.badgeValue = String(workCounter)
        }
    }
    @IBAction func goToDetail(_ sender: Any) {
        let textInfo = textField.text
        performSegue(withIdentifier:"goToDetail" , sender: textInfo)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToDetail" {
            if let veri = sender as? String {
                let gidilecekVC = segue.destination as! DetailVC
                gidilecekVC.mesaj = veri
            }
        }
    }
    
}
