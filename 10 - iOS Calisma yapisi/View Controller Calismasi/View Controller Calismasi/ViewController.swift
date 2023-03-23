//
//  ViewController.swift
//  View Controller Calismasi
//
//  Created by Oğuz Yürken on 23.03.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var etiket: UILabel!
    
    
    @IBOutlet var etiketler: [UILabel]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        etiket.text = "MERHABA"
        etiketler[0].text = "HEY !"
        etiketler[1].text = "HEY 2"
    }

    @IBAction func tiklan(_ sender: Any) {
        etiket.text = "BUTON TIKLANDI"
        etiketler[0].text = "HEY BUTTON !"
        etiketler[1].text = "HEY BUTTON 2"
    }
    
}

