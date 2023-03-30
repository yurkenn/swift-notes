//
//  TahminEkraniVC.swift
//  Sayı Tahmin Et
//
//  Created by Oğuz Yürken on 29.03.2023.
//

import UIKit

class TahminEkraniVC: UIViewController {

    @IBOutlet weak var labelKalanHak: UILabel!
    @IBOutlet weak var labelYardim: UILabel!
    @IBOutlet weak var textFieldGirdi: UITextField!
    
    var rastgaleSayi:Int?
    var kalanHak = 5
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        rastgaleSayi = Int.random(in: 0...100) // 0-100
        print("rastgaele sayi:\(rastgaleSayi!)")
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let gelenVeri = sender as? Bool {
            let gidilecekVC = segue.destination as! SonucEkraniVC
            gidilecekVC.sonuc = gelenVeri
        }
    }

    @IBAction func tahminEt(_ sender: Any) {
        labelYardim.isHidden = false
        kalanHak -= 1
        
        if let veri = textFieldGirdi.text {
            if let tahmin = Int(veri){
                if kalanHak != 0 {
                    if tahmin == rastgaleSayi! {
                        // dogru bildiniz
                        // sayfa gecisi
                        let sonuc = true
                        performSegue(withIdentifier: "tahminToSonuc", sender: sonuc)
                        
                    }
                    if tahmin > rastgaleSayi! {
                        labelYardim.text = "Azalt"
                        labelKalanHak.text = "Kalan Hak:\(kalanHak)"
                    }
                    if tahmin < rastgaleSayi! {
                        labelYardim.text = "Arttir"
                        labelKalanHak.text = "Kalan Hak:\(kalanHak)"
                    }
                }else {
                    // sayfa geicis
                    let sonuc = false
                    performSegue(withIdentifier: "tahminToSonuc", sender: sonuc)
                }
                textFieldGirdi.text = ""
            }
        }
        
    }
    

}
