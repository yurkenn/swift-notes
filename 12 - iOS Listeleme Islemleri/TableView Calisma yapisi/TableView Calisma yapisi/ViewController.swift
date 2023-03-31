//
//  ViewController.swift
//  TableView Calisma yapisi
//
//  Created by Oğuz Yürken on 31.03.2023.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    
    var ulkeler:[String] = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        ulkeler = ["Turkiye","Fransa","Almanya","Italya","Japonya","Rusya","Kore","Misir"]
        
        tableView.delegate = self
        tableView.dataSource = self
    }
    

}

extension ViewController:UITableViewDelegate,UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return ulkeler.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "hucreadi", for: indexPath)
        
        if #available(iOS 14.0, *){
            var content = cell.defaultContentConfiguration()
            content.text = ulkeler[indexPath.row]
            cell.contentConfiguration = content
        }else {
            cell.textLabel?.text = ulkeler[indexPath.row]
        }
        
        return cell
    }

    // TableView Hucre icerinde askyon duzenleme ESKI VERSIYON
//    func tableView(_ tableView: UITableView, editActionsForRowAt indexPath: IndexPath) -> [UITableViewRowAction]? {
//
//        let silAction = UITableViewRowAction(style: .default, title: "Sil", handler: {
//            (action:UITableViewRowAction, indexPath:IndexPath) -> Void in
//            print("\(self.ulkeler[indexPath.row])yi sil")
//        })
//
//        let duzenleAction = UITableViewRowAction(style: .normal, title: "Duzenle", handler: {
//            (action:UITableViewRowAction, indexPath:IndexPath) -> Void in
//            print("\(self.ulkeler[indexPath.row])yi duzenle")
//        })
//
//        return [silAction, duzenleAction]
//    }
    
    // Guncel versiyon
    func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        
        let silAaction = UIContextualAction(style: .destructive, title: "Sil"){
            (contextualAction , view , boolValue) in
            print("\(self.ulkeler[indexPath.row]) yi sil")
        }
        
        let duzenleAction = UIContextualAction(style: .normal, title: "Duzenle"){
            (contextualAction , view , boolValue) in
            print("\(self.ulkeler[indexPath.row]) yi duzenle")
        }
        
        return UISwipeActionsConfiguration(actions: [silAaction,duzenleAction])
        
    }
}
