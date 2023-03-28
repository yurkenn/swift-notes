//
//  ViewController.swift
//  Toolbar Calismasi
//
//  Created by Oğuz Yürken on 28.03.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var etiket: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func geriAL(_ sender: Any) {
        etiket.text = "geri al"
    }
    
    @IBAction func oynat(_ sender: Any) {
        etiket.text = "Oynat"
    }
    
    @IBAction func homeButton(_ sender: Any) {
        etiket.text = "Home"
    }
}

