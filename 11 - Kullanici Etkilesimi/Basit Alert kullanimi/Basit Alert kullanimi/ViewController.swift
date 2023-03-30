//
//  ViewController.swift
//  Basit Alert kullanimi
//
//  Created by Oğuz Yürken on 30.03.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var labelSonuc: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func basedAlert(_ sender: Any) {
        let alertController = UIAlertController(title: "Baslik", message: "mesaj", preferredStyle: .alert)
        
        let iptalAction = UIAlertAction(title: "Iptal", style: .cancel){
            action in
            print("Iptal Tiklandi")
        }
        
        alertController.addAction(iptalAction)
        
        let tamamAction = UIAlertAction(title: "Tamam", style: .destructive){
            action in
            print("Tamam Tiklandi")
        }
        
        alertController.addAction(tamamAction)
        
        self.present(alertController, animated: true)
        
    }
    
    @IBAction func ozelAlert(_ sender: Any) {
        let alertController = UIAlertController(title: "baslik", message: "mesaj", preferredStyle: .alert)
        
        alertController.addTextField { textfield in
            textfield.placeholder = "Email"
            textfield.keyboardType = .emailAddress
                
        }
        
        alertController.addTextField { textfield in
            textfield.placeholder = "Password"
            textfield.isSecureTextEntry = true
        }
        
        let kaydetAction = UIAlertAction(title: "kaydet", style: .destructive){
            action in
            print("Kaydet tiklandi")
            
            let alinanEmail = (alertController.textFields![0] as UITextField).text!
            let alinanSifre = (alertController.textFields![1] as UITextField).text!
            
            self.labelSonuc.text = "Email:\(alinanEmail)- Password:\(alinanSifre)"
            
            
        }
        alertController.addAction(kaydetAction)
        
        self.present(alertController, animated: true)
        
    }
    
    @IBAction func actionSheetAlert(_ sender: Any) {
        let alertController = UIAlertController(title: "Baslik", message: "msj", preferredStyle: .actionSheet)
        
        let iptalAction = UIAlertAction(title: "iptal", style: .cancel){action in print("iptal")}
        alertController.addAction(iptalAction)
        
        let okAction = UIAlertAction(title: "Tamam", style: .destructive){action in print("ok")}
        alertController.addAction(okAction)
        
        self.present(alertController, animated: true)
        
    }
}

