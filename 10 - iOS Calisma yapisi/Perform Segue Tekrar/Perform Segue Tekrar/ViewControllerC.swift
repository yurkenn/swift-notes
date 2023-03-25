//
//  ViewControllerC.swift
//  Perform Segue Tekrar
//
//  Created by Oğuz Yürken on 25.03.2023.
//

import UIKit

class ViewControllerC: UIViewController {

    @IBOutlet weak var label: UILabel!
    
    var messageC:String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        label.text = messageC
        // Do any additional setup after loading the view.
    }
    

}
