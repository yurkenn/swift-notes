//
//  ViewController.swift
//  Kod ile Segue Gecisi
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
        let nesne = Kisiler(kisiId: 22 , kisiAdi: "Ahmet")
        performSegue(withIdentifier: "gofrom1to2", sender: nesne)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let gelenVeri = sender as? Kisiler
        print("Gelen veri : \(gelenVeri!.kisiId!) \(gelenVeri!.kisiAdi!)")
            print("gecis 1 den 2 ye")
        
    }
    
}

