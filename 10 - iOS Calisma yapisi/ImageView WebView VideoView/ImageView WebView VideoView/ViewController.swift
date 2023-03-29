//
//  ViewController.swift
//  ImageView WebView VideoView
//
//  Created by Oğuz Yürken on 29.03.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var image: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func resim1(_ sender: Any) {
        image.image = UIImage(named: "jobs")
    }
    
    @IBAction func resim2(_ sender: Any) {
        image.image = UIImage(named: "resim")
    }
}

