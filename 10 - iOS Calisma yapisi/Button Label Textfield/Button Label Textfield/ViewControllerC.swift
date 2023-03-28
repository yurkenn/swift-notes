//
//  ViewControllerC.swift
//  Button Label Textfield
//
//  Created by Oğuz Yürken on 28.03.2023.
//

import UIKit

class ViewControllerC: UIViewController {

    @IBOutlet weak var sliderLaber: UILabel!
    
    @IBOutlet weak var slider: UISlider!
    
    @IBOutlet weak var stepperLabel: UILabel!
    
    @IBOutlet weak var stepper: UIStepper!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func sliderDegisim(_ sender: UISlider) {
        sliderLaber.text = "Slider: \(Int(sender.value))"
    }
    
    @IBAction func button(_ sender: Any) {
        print("Slider deger:\(Int(slider.value))")
    }
    
    @IBAction func stepperDegisim(_ sender: UIStepper) {
        stepperLabel.text = "Stepper:\(Int(stepper.value))"
    }
}
