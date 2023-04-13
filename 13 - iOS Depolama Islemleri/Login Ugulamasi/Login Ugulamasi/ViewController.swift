//
//  ViewController.swift
//  Login Ugulamasi
//
//  Created by Oğuz Yürken on 13.04.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textFieldKullaniciAdi: UITextField!
    
    @IBOutlet weak var textFieldSifre: UITextField!
    
    let d = UserDefaults.standard
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let ka = d.string(forKey: "kullaniciAdi") ?? "bos"
        let s = d.string(forKey: "sifre") ?? "bos"
        
        if ka != "bos" && s != "bos" { // != "bos" bos degilse
            performSegue(withIdentifier: "girisToanasayfa", sender: nil)
        }
        
    }

    @IBAction func girisButton(_ sender: Any) {
        
        if let ka = textFieldKullaniciAdi.text , let s = textFieldSifre.text {
            if ka == "admin" && s == "123456" {
                
                d.set(ka, forKey: "kullaniciAdi")
                d.set(s, forKey: "sifre")
                
                performSegue(withIdentifier: "girisToanasayfa", sender: nil)
            }else {
                print("Hatali giris")
            }
        }
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.isNavigationBarHidden = true
    }
    override func viewWillDisappear(_ animated: Bool) {
        navigationController?.isNavigationBarHidden = false
    }
    
}

