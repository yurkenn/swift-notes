//
//  ViewControllerB.swift
//  Veri transferi Storyboard Segue
//
//  Created by Oğuz Yürken on 25.03.2023.
//

import UIKit

class ViewControllerB: UIViewController {

    @IBOutlet weak var etiketB: UILabel!
    
    var mesajB:String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

       etiketB.text = mesajB!
    }
    


}
