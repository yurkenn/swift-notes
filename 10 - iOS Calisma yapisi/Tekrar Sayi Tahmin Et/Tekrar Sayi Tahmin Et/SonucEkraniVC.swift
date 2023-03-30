//
//  SonucEkraniVC.swift
//  Tekrar Sayi Tahmin Et
//
//  Created by Oğuz Yürken on 30.03.2023.
//

import UIKit

class SonucEkraniVC: UIViewController {
    
    @IBOutlet weak var resultImage: UIImageView!
    @IBOutlet weak var resultLabel: UILabel!
    
    var mesaj:Bool?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.hidesBackButton = true
        print(mesaj!)
        
        if mesaj! {
            resultLabel.text = "You Win"
            resultImage.image = UIImage(named: "win")
        }else {
            resultLabel.text = "You Lost"
            resultImage.image = UIImage(named: "loose")
        }
        
    }
    
    

    @IBAction func tekrarOyna(_ sender: Any) {
        navigationController?.popToRootViewController(animated: true)
    }
    

}
