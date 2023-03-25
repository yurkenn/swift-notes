//
//  ViewControllerA.swift
//  Perform Segue Tekrar
//
//  Created by Oğuz Yürken on 25.03.2023.
//

import UIKit

class ViewControllerA: UIViewController {

    @IBOutlet weak var inputOne: UITextField!
    
    @IBOutlet weak var inputTwo: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func gotoB(_ sender: Any) {
        let gonderilecekVeri = inputOne.text
        performSegue(withIdentifier: "aTob", sender: gonderilecekVeri)
        
    }
    @IBAction func gotoC(_ sender: Any) {
        let gonderilecekVeri = inputTwo.text
        performSegue(withIdentifier: "aToc", sender: gonderilecekVeri)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "aTob"{
            if let veri = sender as? String {
                let gidilecekVC = segue.destination as! ViewControllerB
                gidilecekVC.messageB = veri
            }
        }
        if segue.identifier == "aToc"{
            if let veri = sender as? String {
                let gidilecekVC = segue.destination as! ViewControllerC
                gidilecekVC.messageC = veri
            }
        }
        
    }
    
}
