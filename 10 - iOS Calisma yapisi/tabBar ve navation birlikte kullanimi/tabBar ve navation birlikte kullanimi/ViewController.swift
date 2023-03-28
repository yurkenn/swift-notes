//
//  ViewController.swift
//  tabBar ve navation birlikte kullanimi
//
//  Created by Oğuz Yürken on 28.03.2023.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let appearance = UITabBarAppearance()
        appearance.backgroundColor = .black
        
         renkDegistir(itemAppearance: appearance.stackedLayoutAppearance)
         renkDegistir(itemAppearance: appearance.inlineLayoutAppearance)
         renkDegistir(itemAppearance: appearance.compactInlineLayoutAppearance)
        
        tabBarController?.tabBar.standardAppearance = appearance
        tabBarController?.tabBar.scrollEdgeAppearance = appearance
       
    }

    func renkDegistir(itemAppearance:UITabBarItemAppearance){
        itemAppearance.selected.iconColor = .systemRed
        itemAppearance.selected.titleTextAttributes = [.foregroundColor: UIColor.red]
        
        
        itemAppearance.normal.iconColor = .white
        itemAppearance.normal.titleTextAttributes = [.foregroundColor: UIColor.white]
        
    }

}

