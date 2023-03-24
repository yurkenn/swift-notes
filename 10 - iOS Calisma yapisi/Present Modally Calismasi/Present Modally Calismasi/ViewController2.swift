//
//  ViewController2.swift
//  Present Modally Calismasi
//
//  Created by Oğuz Yürken on 23.03.2023.
//

import UIKit

class ViewController2: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func dissmiss(_ sender: Any) {
        self.dismiss(animated: true)
    }
    
    @IBAction func goto3(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let gidilecekViewController = storyboard.instantiateViewController(withIdentifier: "sayfa3") as! ViewController3
        
        self.present(gidilecekViewController, animated: true , completion: nil)
    }
    

}
