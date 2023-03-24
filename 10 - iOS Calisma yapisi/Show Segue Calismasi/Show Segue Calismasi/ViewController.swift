//
//  ViewController.swift
//  Show Segue Calismasi
//
//  Created by Oğuz Yürken on 24.03.2023.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func goto2(_ sender: Any) {
        
        /*let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let gidilecekViewController = storyboard.instantiateViewController(withIdentifier: "sayfa2") as! ViewController2
        
        navigationController?.pushViewController(gidilecekViewController, animated: true)
         */
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "gofrom1to2"{
            print("Gecis : 1den 2ye gecis yapildi")
        }
    }
    
}

