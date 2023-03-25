//
//  ViewController.swift
//  Veri Transferi Yaygin Yontem
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

    @IBAction func goToB(_ sender: Any) {
        
        let alinanVeri = girdiAlani.text!
        
        performSegue(withIdentifier: "aToB", sender: alinanVeri)
    }
    
    @IBAction func goToC(_ sender: Any) {
        
        let alinanVeri = girdiAlani.text!
        
        performSegue(withIdentifier: "aToC", sender: alinanVeri)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "aToB"{
            print("Bye Gecis oldu")
            
            if let veri = sender as? String {
                let gidilecekVC = segue.destination as! ViewControllerB
                gidilecekVC.mesajB = veri
            }
        }
        if segue.identifier == "aToC"{
            print("Cye Gecis oldu")
            
            if let veri = sender as? String {
                let gidicelecVC = segue.destination as! ViewControllerC
                gidicelecVC.mesajC = veri
            }
        }
    }
}

