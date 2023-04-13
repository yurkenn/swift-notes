//
//  AnaSayfaVC.swift
//  Login Ugulamasi
//
//  Created by Oğuz Yürken on 13.04.2023.
//

import UIKit

class AnaSayfaVC: UIViewController {

    @IBOutlet weak var labelSonuc: UILabel!
    
    let d = UserDefaults.standard

    override func viewDidLoad() {
        super.viewDidLoad()

        //back butonu sakladik
        navigationItem.hidesBackButton = true
        
        //kullanici adi
        let ka = d.string(forKey: "kullaniciAdi") ?? "bos"
        
        labelSonuc.text = ka
        
    }
    
    @IBAction func buttonCikis(_ sender: Any) {
        // verileri sildik
        d.removeObject(forKey: "kullaniciAdi")
        d.removeObject(forKey: "sifre")
        
        // ana sayfaya doner
        navigationController?.popToRootViewController(animated: true)
        // ugulamayi kapatir
        //exit(-1)
    }
    
   

}
