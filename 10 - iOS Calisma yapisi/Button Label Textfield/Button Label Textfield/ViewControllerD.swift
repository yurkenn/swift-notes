//
//  ViewControllerD.swift
//  Button Label Textfield
//
//  Created by Oğuz Yürken on 28.03.2023.
//

import UIKit

class ViewControllerD: UIViewController {
    @IBOutlet weak var indicator: UIActivityIndicatorView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        indicator.isHidden = true
    }
    
    @IBAction func basla(_ sender: Any) {
        indicator.startAnimating()
        indicator.isHidden = false
    }
    
    @IBAction func dur(_ sender: Any) {
        indicator.stopAnimating()
        indicator.isHidden = true
    }
}
