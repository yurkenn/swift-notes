//
//  ViewController3.swift
//  Show Segue Calismasi
//
//  Created by Oğuz Yürken on 24.03.2023.
//

import UIKit

class ViewController3: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func goto1(_ sender: Any) {
       /* let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let gidilecekViewController = storyboard.instantiateViewController(withIdentifier: "sayfa1") as! ViewController
        
        navigationController?.pushViewController(gidilecekViewController, animated: true)
        */
    }
    
 
    @IBAction func goto2(_ sender: Any) {
        /* let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let gidilecekViewController = storyboard.instantiateViewController(withIdentifier: "sayfa2") as! ViewController2
        
        navigationController?.pushViewController(gidilecekViewController, animated: true) */
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "gofrom3to1"{
            print("Gecis: 3ten 1e")
        }
        if segue.identifier == "gofrom3to2"{
            print("Gecis: 3ten 2ye")
        }
    }

}
