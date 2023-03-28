//
//  ViewController.swift
//  Button Label Textfield
//
//  Created by Oğuz Yürken on 28.03.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var etiket: UILabel!
    
    @IBOutlet weak var textField: UITextField!
    
    @IBOutlet weak var textView: UITextView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func tikla(_ sender: Any) {
        if let alinanVeri = textField.text {
            if let sayi = Int(alinanVeri){
                let islem = sayi * 2
                etiket.text = String(islem)
                
            }
        }
        if let veri = textView.text {
            print(veri)
        }
    }
    
}

