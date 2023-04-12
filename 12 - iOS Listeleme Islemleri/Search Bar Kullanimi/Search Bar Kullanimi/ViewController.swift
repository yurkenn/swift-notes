//
//  ViewController.swift
//  Search Bar Kullanimi
//
//  Created by Oğuz Yürken on 12.04.2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var searchBar: UISearchBar!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        self.searchBar.delegate = self
        
        searchBar.scopeButtonTitles = ["Birinci","Ikinci"]
        
    }


}

extension ViewController:UISearchBarDelegate {
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        print("Arama sonuc:\(searchText)")
    }
    func searchBarCancelButtonClicked(_ searchBar: UISearchBar) {
        print("Cancel")
    }
    func searchBar(_ searchBar: UISearchBar, selectedScopeButtonIndexDidChange selectedScope: Int) {
        if selectedScope == 0 {
            print("birinci secildi")
        }
        if selectedScope == 1 {
            print("ikinci secildi")
        }
    }
}
