//
//  ViewControllerC.swift
//  Veri Transferi Yaygin Yontem
//
//  Created by Oğuz Yürken on 25.03.2023.
//

import UIKit

class ViewControllerC: UIViewController {

    @IBOutlet weak var etiketC: UILabel!
    
    var mesajC:String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        etiketC.text = mesajC
        
    }
    

  

}
