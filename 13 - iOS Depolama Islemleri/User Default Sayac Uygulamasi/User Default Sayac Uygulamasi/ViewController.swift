//
//  ViewController.swift
//  User Default Sayac Uygulamasi
//
//  Created by Oğuz Yürken on 13.04.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var labelSayac: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let d = UserDefaults.standard
        var sayac = d.integer(forKey: "sayac") //integer hic bir degere sahip olmadigi icin 0 sayilir
        
        sayac = sayac + 1
        
        d.set(sayac, forKey: "sayac")
        
        labelSayac.text = "Sayac:\(sayac)"
        
    }


}

