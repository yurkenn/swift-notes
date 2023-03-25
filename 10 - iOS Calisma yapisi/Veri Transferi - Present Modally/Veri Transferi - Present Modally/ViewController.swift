//
//  ViewController.swift
//  Veri Transferi - Present Modally
//
//  Created by Oğuz Yürken on 24.03.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var girdiAlani: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func gonder(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let gidilecekViewController = storyboard.instantiateViewController(withIdentifier: "sayfaB") as! ViewControllerB
        
        let gonderilecekMesaj = girdiAlani.text
        
        gidilecekViewController.mesaj = gonderilecekMesaj!
        
        let gidecekKisi = Kisiler(kisiID: 22 , kisiAD: "OGUZ")
        gidilecekViewController.kisi = gidecekKisi
        
        //self.present(gidilecekViewController, animated: true , completion: nil)
    
        self.navigationController?.pushViewController(gidilecekViewController, animated: true)
        
    }
    
}

