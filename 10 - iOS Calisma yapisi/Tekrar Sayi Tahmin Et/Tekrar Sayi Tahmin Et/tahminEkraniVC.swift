//
//  tahminEkraniVC.swift
//  Tekrar Sayi Tahmin Et
//
//  Created by Oğuz Yürken on 30.03.2023.
//

import UIKit

class tahminEkraniVC: UIViewController {

    @IBOutlet weak var kalanHakLabel: UILabel!
    
    @IBOutlet weak var arttirLabel: UILabel!
    
    @IBOutlet weak var textFielLabel: UITextField!
    
    var kalanHak = 5
    var randomNumber:Int?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.hidesBackButton = true
        randomNumber = Int.random(in: 1...100)
        print(randomNumber!)
    }
    

    @IBAction func tahminEt(_ sender: Any) {
        arttirLabel.isHidden = false
        kalanHak -= 1
        
        if let veri = textFielLabel.text {
            if let tahmin = Int(veri){
                if kalanHak != 0 {
                    if tahmin == randomNumber! {
                        performSegue(withIdentifier: "resultScreen", sender: true)
                    }
                    if tahmin > randomNumber! {
                        arttirLabel.text = "Azalt"
                        kalanHakLabel.text = "Kalan Hakkiniz: \(kalanHak)"
                    }
                    if tahmin < randomNumber! {
                        arttirLabel.text = "Arttir"
                        kalanHakLabel.text = "Kalan Hakkiniz: \(kalanHak)"
                    }
                }else {
                    let sonuc = false
                    performSegue(withIdentifier: "resultScreen", sender: sonuc)
                }
                textFielLabel.text = ""
            }
        }
 }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let gelenVeri = sender as? Bool {
            let gidilecekVC = segue.destination as! SonucEkraniVC
            gidilecekVC.mesaj = gelenVeri
        }
    }
    
}
