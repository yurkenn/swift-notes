//
//  ViewControllerB.swift
//  Perform Segue Tekrar
//
//  Created by Oğuz Yürken on 25.03.2023.
//

import UIKit

class ViewControllerB: UIViewController {

    @IBOutlet weak var label: UILabel!
    
    var messageB:String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        label.text = messageB        // Do any additional setup after loading the view.
    }
    


}
