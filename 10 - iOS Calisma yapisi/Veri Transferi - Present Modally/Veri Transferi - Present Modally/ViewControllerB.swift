//
//  ViewControllerB.swift
//  Veri Transferi - Present Modally
//
//  Created by Oğuz Yürken on 24.03.2023.
//

import UIKit

class ViewControllerB: UIViewController {

    @IBOutlet weak var etiket: UILabel!
    
    var mesaj:String?
    var kisi = Kisiler()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("Kisi id : \(kisi.kisiID!) kisi adi:\(kisi.kisiAD!)")
        etiket.text = mesaj!
    }
    

    

}
