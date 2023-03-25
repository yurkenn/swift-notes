//
//  ViewController.swift
//  Veri transferi Storyboard Segue
//
//  Created by Oğuz Yürken on 25.03.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var girdiAlani: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let gidecekMesaj = girdiAlani.text!
        
        if segue.identifier == "aTob" {
            print("a dan bye gecis")
            
            let gidilecekVC = segue.destination as! ViewControllerB
            gidilecekVC.mesajB = gidecekMesaj
            
        }
        if segue.identifier == "aToc" {
            print("a dan c ye gecis")
            let gidilecekVC = segue.destination as! ViewControllerC
            
            gidilecekVC.mesajC = gidecekMesaj
        }
    }

}

