//
//  SonucEkraniVC.swift
//  Sayı Tahmin Et
//
//  Created by Oğuz Yürken on 29.03.2023.
//

import UIKit

class SonucEkraniVC: UIViewController {
    @IBOutlet weak var imageViewSonuc: UIImageView!
    
    @IBOutlet weak var labelSonuc: UILabel!
    
    var sonuc:Bool?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(sonuc!)
        self.navigationItem.hidesBackButton = true
        self.navigationItem.title = "Sonuc Ekrani"
        
        if sonuc! {
            labelSonuc.text = "Kazandiniz"
            imageViewSonuc.image = UIImage(named: "mutluResim")
        }else{
            labelSonuc.text = "Kaybettiniz"
            imageViewSonuc.image = UIImage(named: "uzgunResim")
        }
        
    }
    
    @IBAction func tekrarOyna(_ sender: Any) {
        navigationController?.popToRootViewController(animated: true)
    }
    


}
