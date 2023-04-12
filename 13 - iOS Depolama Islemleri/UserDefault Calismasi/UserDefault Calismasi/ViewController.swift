//
//  ViewController.swift
//  UserDefault Calismasi
//
//  Created by Oğuz Yürken on 13.04.2023.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let d = UserDefaults.standard
        
        d.set("ahmet", forKey: "ad")
        d.set(15, forKey: "yas")
        d.set(1.77, forKey: "boy")
        d.set(true, forKey: "medeniDurum")
        
        let arkadasListesi = ["ali","veysel","ece"]
        
        d.set(arkadasListesi, forKey: "liste")
        
        let sehirListesi:[String:String] = ["16":"Bursa","34":"istanbul"]
        d.set(sehirListesi, forKey: "dict")
        
        // Veri okuma
        let ad = d.string(forKey: "ad") ?? "isim yok"
        let yas = d.integer(forKey: "yas")
        let boy = d.double(forKey: "boy")
        let medeniDurum = d.bool(forKey: "medeniDurum")
        
        print(ad)
        print(yas)
        print(boy)
        print(medeniDurum)
        
        //liste
        let liste = d.array(forKey: "liste") as? [String] ?? [String]()
        print(liste[0])
        
        let dict = d.dictionary(forKey: "dict") as? [String:String] ?? [String:String]()
        print(dict["16"]!)
        
        //veri silmek
        //d.removeObject(forKey: "ad")
        //let adx = d.string(forKey: "ad") ?? "isim yok"
        //print(adx)
        
        //veri guncelleme
        d.set("yeni Ahmet", forKey: "ad")
        let adx = d.string(forKey: "ad") ?? "isim yok"
        print(adx)
    }


}

