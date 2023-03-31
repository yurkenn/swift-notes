//
//  ViewController.swift
//  Textfield ile PickerView Kullanimi
//
//  Created by Oğuz Yürken on 31.03.2023.
//

import UIKit

class ViewController: UIViewController,UIPickerViewDelegate,UIPickerViewDataSource {

    @IBOutlet weak var textFieldUlke: UITextField!
    
    var pickerView:UIPickerView?
    
    var ulkeler:[String] = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ulkeler = ["Turkiye","Almanya","Japonya","Rusya","Italya"]
        
        pickerView = UIPickerView()
        pickerView?.dataSource = self
        pickerView?.delegate = self
        
        textFieldUlke.inputView = pickerView
        
        let toolbar = UIToolbar()
        toolbar.tintColor = .red
        toolbar.sizeToFit()
        
        let tamamButton = UIBarButtonItem(title: "Tamam", style: .plain, target: self, action: #selector(ViewController.tamamTIkla))
        
        let boslukButton = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil)
        
        let ipalButton = UIBarButtonItem(title: "Iptal", style: .plain, target: self, action: #selector(self.iptalTikla))
        
        toolbar.setItems([ipalButton,boslukButton,tamamButton], animated: true)
        
        textFieldUlke.inputAccessoryView = toolbar
        
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return ulkeler.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return ulkeler[row]
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        return textFieldUlke.text = ulkeler[row]
    }
    
    // toolbar button methods
    
    @objc func tamamTIkla(){
        print("Ulke Secildi")
        view.endEditing(true)
    }

    @objc func iptalTikla(){
        textFieldUlke.text = ""
        textFieldUlke.placeholder = "Ulke sec..."
        view.endEditing(true)
    }
}

