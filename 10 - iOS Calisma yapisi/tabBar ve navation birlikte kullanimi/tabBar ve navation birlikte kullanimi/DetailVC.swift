//
//  DetailVC.swift
//  tabBar ve navation birlikte kullanimi
//
//  Created by Oğuz Yürken on 28.03.2023.
//

import UIKit

class DetailVC: UIViewController {

    @IBOutlet weak var etiket: UILabel!
    var mesaj:String?
    override func viewDidLoad() {
        super.viewDidLoad()
        etiket.text = mesaj
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
