//
//  ViewControllerB.swift
//  Button Label Textfield
//
//  Created by Oğuz Yürken on 28.03.2023.
//

import UIKit

class ViewControllerB: UIViewController {

    @IBOutlet weak var uiSwitch: UISwitch!
    
    @IBOutlet weak var segment: UISegmentedControl!
    override func viewDidLoad() {
        super.viewDidLoad()

   
    }
    @IBAction func switchDegistir(_ sender: UISwitch) {
        if sender.isOn {
            print("Switch Acik")
        }else{
            print("Switch Kapali")
        }
    }
    
    @IBAction func tikla(_ sender: Any) {
        
        print("Switch Durum: \(uiSwitch.isOn)")
        print("Segemnt Kotrol: \(segment.selectedSegmentIndex)")
}
    
    @IBAction func acKapat(_ sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 0 {
            print("Ac")
        }else {
            print("kapat")
        }
    }
    

}
