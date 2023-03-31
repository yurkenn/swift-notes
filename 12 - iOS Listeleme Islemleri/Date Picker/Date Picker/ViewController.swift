//
//  ViewController.swift
//  Date Picker
//
//  Created by Oğuz Yürken on 31.03.2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tarih: UITextField!
    
    @IBOutlet weak var saat: UITextField!
    
    var datePicker:UIDatePicker?
    
    var timePicker:UIDatePicker?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        datePicker = UIDatePicker()
        datePicker?.datePickerMode = .date
        datePicker?.preferredDatePickerStyle = .wheels
        tarih.inputView = datePicker
        
        timePicker = UIDatePicker()
        timePicker?.datePickerMode = .time
        timePicker?.preferredDatePickerStyle = .wheels
        saat.inputView = timePicker
        
        // date picker
        datePicker?.addTarget(self, action: #selector(self.tarihGoster(datePicker:)), for: .valueChanged)
        
        // time picker
        timePicker?.addTarget(self, action: #selector(self.saatGoster(timePicker:)), for: .valueChanged)

        
        let dokunmaAlgilama = UITapGestureRecognizer(target: self, action: #selector(self.dokunmaAlgilamaMetod))
        view.addGestureRecognizer(dokunmaAlgilama)
    }

    // date picker method
    @objc func tarihGoster(datePicker:UIDatePicker){
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MM/dd/yyyy"
        let alinanTarih = dateFormatter.string(from: datePicker.date)
        
        tarih.text = alinanTarih
        
        //view.endEditing(true)
    }
    
    //time picker method
    @objc func saatGoster(timePicker:UIDatePicker){
        let timeFormatter = DateFormatter()
        timeFormatter.dateFormat = "hh:mm"
        let alinanSaat = timeFormatter.string(from: timePicker.date )
        
        saat.text = alinanSaat
    }
    
    
    @objc func dokunmaAlgilamaMetod(){
        view.endEditing(true)
    }

}

