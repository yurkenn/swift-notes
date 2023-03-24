//
//  ViewController2.swift
//  Show Segue Calismasi
//
//  Created by Oğuz Yürken on 24.03.2023.
//

import UIKit

class ViewController2: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.hidesBackButton = true
        // Do any additional setup after loading the view.
    }
    

    @IBAction func geri(_ sender: Any) {
        navigationController?.popViewController(animated: true)
        
       // En bastaki sayfaya doner navigationController?.popToRootViewController(animated: true)
    }
    
    @IBAction func goto3(_ sender: Any) {
       /* let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let gidilecekViewController = storyboard.instantiateViewController(withIdentifier: "sayfa3") as! ViewController3
        
        navigationController?.pushViewController(gidilecekViewController, animated: true) */
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "gofrom2to3"{
            print("Gecis: 2den 3e")
        }
    }
}
